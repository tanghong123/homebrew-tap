class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.160.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "98ce16107c9e15c25975b605e39610806d6b7c9ca80608bf833837efa01dfc2b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0c1fe003841f3e5e188f281cb2d3df8574748c65caa1839e6cb3ce41071111bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "91ed6910ae37e6dff7e8f5315cecd7a1f83278f6f289b109c567dde1ef146ae6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.160.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c449ecab116e8cdc30894acdbb89190f6bde32d72943c1a11673981752fc30a3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
