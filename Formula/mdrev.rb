class Mdrev < Formula
  desc "Review Markdown like code: git-history redlines with blame and notes"
  homepage "https://github.com/tanghong123/homebrew-tap"
  # Prebuilt bundle: the CLI and engine are compiled into one file and the
  # viewer ships as built assets. It runs on node rather than embedding it.
  url "https://github.com/tanghong123/homebrew-tap/releases/download/mdrev-0.4.5/mdrev-0.4.5-macos.tar.gz"
  version "0.4.5"
  sha256 "5be9d97ba51bc7ef43d58cef3271bbc861467ccb965e5fe4982edb885eeb97e1"
  license "MIT"

  depends_on :macos
  depends_on "node"

  def install
    # keep the bundle intact — mdrev.js resolves its vendored shiki and the web
    # assets relative to itself — and expose only the launcher on PATH
    libexec.install Dir["*"]
    (bin/"mdrev").write <<~SH
      #!/bin/bash
      exec "#{formula_opt_bin("node")}/node" "#{libexec}/mdrev.js" "$@"
    SH
    chmod 0755, bin/"mdrev"
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

      Select text to annotate it, or to copy it with its source attached
      (shift-cmd-C) for pasting into another document.

      Review notes can be closed from the viewer or the command line:
        mdrev --notes                  open notes across the repo
        mdrev --resolve ID --note "…"  close one

      mdrev ships the skill that teaches an agent to use it. knack runs the
      install itself, so adopting is the only step:
        knack lib adopt mdrev --via mdrev:$(mdrev skill recipe) --agent claude --yes

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
