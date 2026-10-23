class Mdrev < Formula
  desc "Review Markdown like code: git-history redlines with blame and notes"
  homepage "https://github.com/tanghong123/homebrew-tap"
  # Prebuilt bundle: the CLI and engine compiled into one file plus the viewer's
  # built assets. It runs ON node rather than embedding one.
  url "https://github.com/tanghong123/homebrew-tap/releases/download/mdrev-1.1.61/mdrev-1.1.61-macos.tar.gz"
  sha256 "631860c18bba95948ff175f89a46bdc10dc96c880a89f8c9aca221eaf8dccc3a"
  license "MIT"

  depends_on :macos
  depends_on "node"

  def install
    # keep the tree intact — each program resolves its vendored shiki and the
    # guest bundle relative to itself — and expose only the launchers on PATH
    libexec.install Dir["*"]
    # `mdrev` ROUTES; it is not a viewer. The tarball's dispatcher sends a
    # document to the viewer (mdrev-v2.js) and the installation's own commands
    # (the skill, the Finder app, mdrev://, device pairing) to mdrev.js. So the
    # command is a wrapper around it, carrying two things the plain launchers
    # below do not need:
    #   - the dispatcher's own marker line, which `mdrev --install-finder-app`
    #     looks for in the launcher on PATH before baking it into a droplet;
    #   - node by absolute path, because a droplet runs `do shell script`, whose
    #     PATH is /usr/bin:/bin and nothing else, so brew's node is not on it.
    (bin/"mdrev").write <<~SH
      #!/bin/bash
      # mdrev-dispatch — this command routes to the viewer or the installation's commands
      export MDREV_NODE="#{formula_opt_bin("node")}/node"
      exec "#{libexec}/mdrev" "$@"
    SH
    chmod 0755, bin/"mdrev"

    # and the three it hands work to: mdrev-legacy, the installation's commands
    # (the name stays for scripts that call it; the viewer it named is retired);
    # mdrev-cli, the command line a host application calls for mdrev's store;
    # and mdrev-v2, the viewer under its own name, which is also the sample host
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

      The viewer renders in your browser. The first mdrev starts one shared
      background viewer on port 4600; later files open in it, so every
      document shares a warm process. It answers only this machine and only
      your account: the address mdrev opens carries a one-time code (from the
      key kept at ~/.mdrev/token) that becomes a cookie, so a bookmark without
      it works from then on. A tab that says it is "not keyed" just needs one
      `mdrev <file>` again.

      The original viewer, which rendered server-side, is retired: `--legacy`
      is accepted and ignored, and `mdrev --stop` also ends one an older
      install left running.

      Select text to annotate it, or to copy it with its source attached
      (press c) for pasting into another document.

      Right-click a file or a folder in the left column to reveal it in Finder
      or copy its path.

      Review notes can be closed from the viewer or the command line:
        mdrev --notes                  open notes across the repo
        mdrev --resolve ID --note "…"  close one

      Reviewers on different machines can share threads about a document.
      Pair this machine once, through your agent ("set up shared review")
      or in your own terminal:
        mdrev --review-pair

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
      Running it again rebuilds the same app, so macOS asks only once.
      An upgrade does not rebuild the app: if one built before 1.1.18 opens
      a document whose files rail then stops answering, run it again.
    EOS
  end

  test do
    assert_match "mdrev", shell_output("#{bin}/mdrev --help")
  end
end
