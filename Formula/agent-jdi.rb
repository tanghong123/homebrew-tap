class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.132.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a37700e22cebad1075348104b4f3457f8d44a023cfef29fe9e5f6cb667bafa1d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c21d9a05a76ecaab1fc357d341710da152800328d8b4a106db11cab108864395"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cfdc9489b15d0a136711383ed72a19888e18bb1fc5d60c5f51e0683dc47fdd75"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ca26d36254df7f1712b6d9faf2508d7d91047932bc5751c97ebadcf475f58e5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
