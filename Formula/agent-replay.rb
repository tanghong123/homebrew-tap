class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.488.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d93cb84ba5a599a9bd360d80637a18fc285abeba299748fc3e7350d097579acd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "87df8b63283fb4d4f6b8a4aeb71ff2a3d468b4e2e68e47df0dc3e554e9ef3371"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ef4e93cc129cf4bad873614c3d9c93309f2caf7efa23f40081d4352f6295daaf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "93c79ae9732edc77d0e3511801f29b16ed5c9e2c57dfee6af383dcd31f88d429"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
