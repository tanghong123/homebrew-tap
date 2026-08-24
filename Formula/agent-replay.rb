class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.104.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cf7711cc24f42a82c3ae25171d8301321fd3fd5012c7e573e975e1b1b12e2d74"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ec9b1fac1e297505fe9ec2ad6fa8405958215d4f755723e53bdad3a2933c5ae4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dc8910ac62ee83881546eb7614984db4b13b5087c2b35987bd267230a6097508"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9feea5f3dfa1d5d2283e45831d608c651e81ed1eb254c9bdf684a27b42125637"
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
