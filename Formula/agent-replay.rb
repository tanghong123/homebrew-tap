class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.419.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1f62b2ec2561b5b1668f84bc059cdfe2ef67877b0b0a7ceadff52acb486af6fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "04483c6a6c8f0c33721cbb734e29d4316f58d1df35a3d8eecdc90a7b8e820d7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9d30974f9fceb827b351b4201f90ac730d91bdf35ca9f565fa54601a5275c6d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1010351a525671f2655114a89ed61ddd5f8d2353f34f75fdbcb126bba5052470"
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
