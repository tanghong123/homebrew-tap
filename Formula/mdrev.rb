class Mdrev < Formula
  desc "Review Markdown like code: git-history redlines with blame and notes"
  homepage "https://github.com/tanghong123/homebrew-tap"
  # Prebuilt bundle: the CLI and engine are compiled into one file and the
  # viewer ships as built assets. It runs on node rather than embedding it.
  url "https://github.com/tanghong123/homebrew-tap/releases/download/mdrev-0.16.25/mdrev-0.16.25-macos.tar.gz"
  sha256 "8616962c0edbc0c46f05eb791d0740efdb9bde2e606defd1ec6336cf64c149e1"
  license "MIT"

  depends_on :macos
  depends_on "node"

  def install
    # keep the bundle intact — mdrev.js resolves its vendored shiki and the web
    # assets relative to itself — and expose only the launchers on PATH
    libexec.install Dir["*"]
    # three commands from one tree: the viewer; mdrev-cli, the command line
    # a host application calls for mdrev's store; and mdrev-v2, the sample
    # host that serves a checkout with mdrev's guest inside its page
    { "mdrev" => "mdrev.js", "mdrev-cli" => "mdrev-cli.js", "mdrev-v2" => "mdrev-v2.js" }.each do |name, entry|
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

      The first mdrev starts one shared background viewer on port 4399; later
      files open in it, so every document shares a warm process and one cache.
      It answers only this machine and only your account: the address mdrev
      opens carries a key (kept at ~/.mdrev/token) that becomes a cookie, so
      a bookmark without it works from then on. A tab that says it is "not
      keyed" just needs one `mdrev <file>` again.

      Select text to annotate it, or to copy it with its source attached
      (press c) for pasting into another document.

      Review notes can be closed from the viewer or the command line:
        mdrev --notes                  open notes across the repo
        mdrev --resolve ID --note "…"  close one

      mdrev ships the skill that teaches an agent to use it. knack runs the
      install itself, so adopting is the only step:
        knack lib adopt mdrev --via mdrev:$(mdrev skill recipe) --agent claude --yes

      Embedding mdrev in an application of your own? The developer guide and
      the sample host's source ship with it:
        open #{opt_libexec}/docs/embedding-guide.html

      To open Markdown from Finder:
        mdrev --install-finder-app
      macOS will ask you to confirm mdrev as the default for .md files —
      approve it. (Since macOS 12 no tool can set that silently.) If no dialog
      appears: Get Info on a .md file > "Open with:" > mdrev > "Change All...".
    EOS
  end

  test do
    (testpath/"a.md").write "# Title\n\nBody.\n"
    assert_match "mdrev", shell_output("#{bin}/mdrev --help")
    assert_match "not running", shell_output("#{bin}/mdrev --status")
  end
end
