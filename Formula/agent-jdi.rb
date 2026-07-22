class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.12.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "08091abf1220e3031f0f95ec695af9cc8b2f3a772795497fa82fdaadadaabb9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "993ff133ef3674e27d0206cc2ef66dc6ebc195ab74d9598527d282883257c755"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4c7c575a38ca2bdb35bc1516c9f073f1b9ce2903b810f0714c386c5e1d772022"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63a740a6fa1e4f48ba109ca547f7cb13c6f656dfc6890e03a13789d6379690a2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
