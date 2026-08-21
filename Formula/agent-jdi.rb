class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.97.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ddfeb4751e2f339e641a5f8714c4c93d3536b771f380bd7104bab67e4fce6fb0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "cb3d4739fd220659d5dcfc96eb28a6b2ab42cb183a89b22d512a26fa2c3bbfb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "43a8021d3b8c5f7ced8a0991045873f9e048981582a262f598c3d3de15b09bcb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "515868093b2afc253ce5803c0af8ef79c37f887aad8f0c183992244a7c6cbf14"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
