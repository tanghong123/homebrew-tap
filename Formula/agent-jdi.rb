class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.150.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f3275660606693b68342683ff02ae9b0a55fb1fb5e474f352a44303c816fddfa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b6ee293489017099aa18c359819f505c5b6a47ac033735cd099cc60f601ede74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a8e1c6116f7caf59465aed7cf6d4944181223fe3ad6a1c7bf36c59edab9920c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c12f5dc60de6d5fa3d4b46aa9c935da0063f244148e3e595a3eda46aa13ee20c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
