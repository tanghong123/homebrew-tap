class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e339493c05a7ac5af5c2ee6ed528e8a546924f7d416c7926192b977261fa1c74"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "da92f25c26b80680ab6ad6a1a88a8e961ca48d49d84a95c36e8ceafcd5e0f874"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a2d0d12164339dd6d9988b7857f2987a7a94ce06be128bcbcf769bb91a3c0112"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8207c9d3b246cea52311fcd7eac1c51aea448b02aacfcfdfaed6cea64695b257"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
