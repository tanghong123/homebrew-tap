class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.387.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "373fed9e73d9babae63eb6aa29a1c1c60665bb7226a5ff3484cb0ee3a29b88ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "16070d911fc7c92ad62674e4939ca32a4637f1116c4578586e36cbf0a96cbe7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fca4cdc16aa697738d51039fee9399e072c3c80af8c3f1ea5e327462f8c077b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4967e8847f8686364d3d378a08a52ba6023a503a31d2a94994e882a793b4ac86"
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
