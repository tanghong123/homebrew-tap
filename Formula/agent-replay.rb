class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.518.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3785f7bd8c1f23ba6740f0f0e8375fa5d79e2b227db6ca6c59c7790028381ad6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fc5fc25b1dbdcada281f6d3fbc6c3d87d5dc05d7ccff06fb40fe37c582e32d69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "457215fe7f22ead1d8928001572a86f9df9aafa47b004ff234a9a295ea800049"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e6bcfc12a54724e9286cb91e6128d8f73153d3e60a75c14ec906b3fc9494d5f1"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
