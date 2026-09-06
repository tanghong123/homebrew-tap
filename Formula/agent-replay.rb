class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.217.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "269ce21ccf3e197dc1a27d2efc30bc6d7cd5e6b2b1108b502868409306802407"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "11e8555484732a7f5bdb48d2751c14bcb4cfeddac84cc6901c44ad9d3a26a089"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc7d32b4b0fe046bf45283a4fe050e5c456aa1359511e4a065d9bfcf4a7fe4e5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "32ee1728db87a8a37908bd3768b74dc0e96e91bae7027317d337f9f52591e40f"
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
