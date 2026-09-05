class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.208.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9b726125eb0063d03e42cb4f51eec1c4ead58373293317f079ab807690edcd3d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a0a70ebafa27b113bad06f7a8a6162300c97ae2e0865060e126893c915625371"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "685db471e9b90f8f8123402f83e0dce64c51ee961e1778ba99c274684c93a1a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "635dea2647e90b65e035ae9748d7936110428bf06aee510f395c0a271e67cb76"
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
