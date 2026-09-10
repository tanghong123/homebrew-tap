class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.249.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "89f4647a79919766d1084d9a7ade02e33ea70fbbbef73dabe2434b8572ed858d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0ff2d33d62572e684d78edb656fca3e77ca341111190424edd6e3c644159fac4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "126e81db5cf234bc9a39dccc240f4bf63bf9fb49dbd364c3e32a6961b55b2bc9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8693d1b387ff848e9ce2daa1dd1f1a1e1b6c954bfc44501466d22fe187bd14ea"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
