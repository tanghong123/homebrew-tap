class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.127.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1efbe156fbde0d554f96c8ab6f373839f31d952f817d8837e11590cef4098c7d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ebbaef2131040b383294be55008853309add47b060c1d67cae9c3a04d7918067"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d76ca598ad77fe073f4ea71a37ac0105caf2cd53f37a2b81b6073266a7c3682e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "072ae60c7f6ad4b4b40c93b6416f0cd8ec6f2f12ed5a49183ca3ebf1d834609e"
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
