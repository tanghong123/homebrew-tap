class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.185.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "db9989d18c051e9a748b275794aea96612957cebf3373570816be633e0a19a94"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "37382c06a2d564648a9ee246ab6d88596e9dd0afcdcae90462c0b925d2d3b493"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2507fa2bcebb3beb883ef11f59209b0f3aaf77e2a4093c15f3a24fb5e5a5caca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0eae685ace46c61aae152f2eddc6f17067793b99237285612c484a85f68f313d"
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
