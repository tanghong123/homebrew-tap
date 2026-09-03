class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.144.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ce6f73f254a4cab3d274b2e963860de7d541552d4ffb1c3429fb122c8ea13036"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "982c999c77a9bc5882087bc2b0212229fbf82abfb4541384cf75386032d2bb7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c17d0b624be043a39b58d5662d03cbe2de2f75684384f739c8d0d7bd12d177c7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da4ab97bae532d3c9a0c832913cd20ad26456713c05550322f5c9a2d149bd3e4"
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
