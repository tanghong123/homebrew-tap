class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.408.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e18de135e3e8f13038f5b390e71a1b8b8df24e5f8302a6e634a2a4a402f1ba2e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c22ee826b13003855daa57373afe82034c2c4d2fa4e0517770e424cecde2fff6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8311c0a4e79b409af0ce84489904deba3825ac1e1fe6aead3712fb331c684a99"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4774c9406356bded400889871c385f769e1a9315a6518b3e7c712cf9f6937a84"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
