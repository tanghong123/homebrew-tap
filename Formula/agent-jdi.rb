class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.452.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a162f63db76a05e8b2ee81116c93a2a03645a64451ac8b2604648453d6c39e06"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6fd52948141b580204b5410cb216e946e2522474394ecda82fe1279643050239"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "68d7de2b61984ec6eae1699814e3b7dab9e3c9b3cc947ad9871fbd0052e24509"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3be1a5fe29dd3715764f0a22da88e8e8dbdbf43e2e56e50ba039aedf26f87b77"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
