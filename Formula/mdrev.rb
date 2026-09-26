class Mdrev < Formula
  desc "Review Markdown like code: git-history redlines with blame and notes"
  homepage "https://github.com/tanghong123/homebrew-tap"
  # Prebuilt bundle: the CLI and engine compiled into one file plus the viewer's
  # built assets. It runs ON node rather than embedding one.
  url "https://github.com/tanghong123/homebrew-tap/releases/download/mdrev-1.1.13/mdrev-1.1.13-macos.tar.gz"
  sha256 "c8823dc88191a31f5c8f56c1ec7f3cc8174a89a6921e59e04554b35b7dde4da2"
  license "MIT"

  depends_on :macos
  depends_on "node"

  def install
    # keep the bundle intact — mdrev.js resolves its vendored shiki and the web
    # assets relative to itself — and expose only the launchers on PATH
    libexec.install Dir["*"]
    # `mdrev` ROUTES; it is not a viewer. The tarball ships a dispatcher beside
    # the two of them, and writing a launcher straight to mdrev.js here would
    # install the PREVIOUS viewer under the name whose job is to choose. So the
    # command is a wrapper around it, carrying two things the plain launchers
    # below do not need:
    #   - the dispatcher's own marker line, because `mdrev --install-finder-app`
    #     reads the launcher on PATH to decide whether it may bake --legacy into
    #     a droplet; an mdrev from before the dispatcher exits 1 on that flag;
    #   - node by absolute path, because a droplet runs `do shell script`, whose
    #     PATH is /usr/bin:/bin and nothing else, so brew's node is not on it.
    (bin/"mdrev").write <<~SH
      #!/bin/bash
      # mdrev-dispatch — this command routes between the two viewers
      export MDREV_NODE="#{formula_opt_bin("node")}/node"
      exec "#{libexec}/mdrev" "$@"
    SH
    chmod 0755, bin/"mdrev"

    # and the three it chooses between or hands work to: mdrev-legacy, the
    # viewer that renders server-side; mdrev-cli, the command line a host
    # application calls for mdrev's store; and mdrev-v2, the newer viewer under
    # its own name, which is also the sample host
    { "mdrev-legacy" => "mdrev.js", "mdrev-cli" => "mdrev-cli.js", "mdrev-v2" => "mdrev-v2.js" }.each do |name, entry|
      next unless (libexec/entry).exist?

      (bin/name).write <<~SH
        #!/bin/bash
        exec "#{formula_opt_bin("node")}/node" "#{libexec}/#{entry}" "$@"
      SH
      chmod 0755, bin/name
    end
  end

  def caveats
    <<~EOS
      mdrev shells out to the system git for history, so git must be on PATH.
      A file outside any repository still opens, as a plain viewer.

        mdrev doc.md --last 3   # the file's last three changes, as a redline
        mdrev doc.md            # just read it
        mdrev --status          # is the shared viewer running?  --stop ends it

      TWO VIEWERS, ONE COMMAND. mdrev opens the newer viewer, which
      renders in your browser; `mdrev --legacy <file>` opens the original, which
      renders server-side. Both are installed and both can run at once, on ports
      of their own. `mdrev --legacy --help` lists what only the original has.

      The first mdrev starts one shared background viewer on port 4399; later
      files open in it, so every document shares a warm process and one cache.
      It answers only this machine and only your account: the address mdrev
      opens carries a key (kept at ~/.mdrev/token) that becomes a cookie, so
      a bookmark without it works from then on. A tab that says it is "not
      keyed" just needs one `mdrev <file>` again.

      Select text to annotate it, or to copy it with its source attached
      (press c) for pasting into another document.

      Right-click a file or a folder in the left column to reveal it in Finder
      or copy its path.

      Review notes can be closed from the viewer or the command line:
        mdrev --notes                  open notes across the repo
        mdrev --resolve ID --note "…"  close one

      mdrev ships the skill that teaches an agent to use it. knack runs the
      install itself, so adopting is the only step:
        knack lib adopt mdrev --via mdrev:$(mdrev skill recipe) --agent claude --yes

      Embedding mdrev in an application of your own? The developer guide and
      the sample host's source ship with it:
        open #{opt_libexec}/docs/embedding-guide.html
      (or take mdrev-embed-#{version}.tar.gz from the GitHub release, the kit
      without the viewer app).

      To open Markdown from Finder:
        mdrev --install-finder-app
      macOS will ask you to confirm mdrev for .md files — approve it.
      (Since macOS 12 no tool can set that silently.)
      There is one app whichever viewer you pick, so switching never asks again:
      run it with --legacy to pin double-clicks to the original.
    EOS
  end

  test do
    assert_match "mdrev", shell_output("#{bin}/mdrev --help")
  end
end
