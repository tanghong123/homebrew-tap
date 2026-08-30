class Mdv < Formula
  desc "Review Markdown like code: git-history redlines with blame and notes"
  homepage "https://github.com/tanghong123/homebrew-tap"
  # Prebuilt bundle: the CLI and engine are compiled into one file and the
  # viewer ships as built assets. It runs on node rather than embedding it.
  url "https://github.com/tanghong123/homebrew-tap/releases/download/mdv-0.1.2/mdv-0.1.2-macos.tar.gz"
  version "0.1.2"
  sha256 "2ae821160a10f61a40513c84b066549022a910a4db6d8eb7000765da43dd477e"
  license "MIT"

  depends_on :macos
  depends_on "node"

  def install
    # keep the bundle intact — mdv.js resolves its vendored shiki and the web
    # assets relative to itself — and expose only the launcher on PATH
    libexec.install Dir["*"]
    (bin/"mdv").write <<~SH
      #!/bin/bash
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/mdv.js" "$@"
    SH
    chmod 0755, bin/"mdv"
  end

  def caveats
    <<~EOS
      mdv shells out to the system git for history, so git must be on PATH.
      A file outside any repository still opens, as a plain viewer.

        mdv doc.md --last 3     # the file's last three changes, as a redline
        mdv doc.md              # just read it
        mdv --status            # is the shared viewer running?  --stop ends it

      The first mdv starts one shared background viewer on port 4399; later
      files open in it, so every document shares a warm process and one cache.

      To open Markdown from Finder, build the launcher app once:
        mdv --install-finder-app
      then right-click any .md file and choose Open With > mdv (or Get Info >
      Open with > mdv > Change All to make it the default).
    EOS
  end

  test do
    (testpath/"a.md").write "# Title\n\nBody.\n"
    assert_match "mdv", shell_output("#{bin}/mdv --help")
    assert_match "not running", shell_output("#{bin}/mdv --status")
  end
end
