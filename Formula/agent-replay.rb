class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.405.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "94608d3a246297de8ac1b07af251066c5e03253bdc34e54fdb1d9bffff7506d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c87f41561b8ca9cf47853144f9289f540eacc901cf44db3d59238c81f2af5471"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1fc1d10aa98fa0229f23c2f006abb3027f67cde1488a151633b9520963d60df6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e900cfcf37880b8cb57e2da45881a6cf97cc7970e2e5fc58dad3d144c8cac05a"
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
