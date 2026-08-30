class Mdrev < Formula
  desc "Review Markdown like code: git-history redlines with blame and notes"
  homepage "https://github.com/tanghong123/homebrew-tap"
  # Prebuilt bundle: the CLI and engine are compiled into one file and the
  # viewer ships as built assets. It runs on node rather than embedding it.
  url "https://github.com/tanghong123/homebrew-tap/releases/download/mdrev-0.2.0/mdrev-0.2.0-macos.tar.gz"
  version "0.2.0"
  sha256 "42585fc049a36b821b978b171ca774b5196f8077170ab83cbecc265f9f0e7749"
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

      To open Markdown from Finder, build the launcher app once:
        mdrev --install-finder-app
      then right-click any .md file and choose Open With > mdrev (or Get Info >
      Open with > mdrev > Change All to make it the default).
    EOS
  end

  test do
    (testpath/"a.md").write "# Title\n\nBody.\n"
    assert_match "mdrev", shell_output("#{bin}/mdrev --help")
    assert_match "not running", shell_output("#{bin}/mdrev --status")
  end
end
