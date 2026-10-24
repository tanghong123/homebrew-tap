class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.417.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e2dabd9f42f229739a5fdaa8fe8c0bf4d05adda0c5919276d3adb59ffd65d7aa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "138d17266670afbe2ed50c45105c061958c0ac6fc55e0aae5316e130971d8adc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c580f69cd5fe55bf14bca94da3f9947a1760742158c0752cbbe4ddcb9bb494da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d22d178951939a13bdf34d9e630dbefde0e8928f9eb947c2c3393d145abc8d5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
