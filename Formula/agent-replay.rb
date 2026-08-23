class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "18e73cea56d8b3305bacf95fe110dd48f4be0dc651096a9902fafece4323df72"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5d372e5b75c4d65392eb0b7a92a6edac59e42526d50b8f2ac61cf3643bda68e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "171259485b572100984a871d8f5aeb8a0c93c4e8e52005e6b495961777f86fa1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0cf6628d8b186a1820b0d0410612d5bc3fa106fd91fd5abfea7d7463fad01072"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
