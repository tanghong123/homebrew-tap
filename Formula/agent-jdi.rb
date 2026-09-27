class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.317.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2e032f21c15b0f40e1a78cd3eeaaebf68d65e1d734558d4d0684e6d8b9582795"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d540306ed34994d83f2f889e1854819cf22497f05be7029bf598016d64616086"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "937ee2d22fe8fdfff029b2293eb210febc08a7a0a17301982357a6cc202d10f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f95b6cec6e186de2da7ffc84245ef5393ed57d6c96c8f13d519156e244f3e243"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
