class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.316.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9b8554306bd1a2ff28bc67e633a7ef8e6da2fe48d4c73458f7c751ab21204329"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "350e1963ec616aaeceb92d6ee9b0042233e119aa5384d936292bbdf0aaedf970"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0890ad116f614b607a6a47787741898de4825caf5a8d59d2a3c8b839e363066c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9978c3eb338168571572632ae5d1c088a5d91ccb87332c86e5263d446c9b6c0a"
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
