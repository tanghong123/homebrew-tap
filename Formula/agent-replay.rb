class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.440.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "693f70a29f4ec6f33fb604deb4647688cad5dda6280bb91f9ab57488fd7ad4ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cf64fc7f13364c21491a0cccceaad78d90322c3a2b2cd429d51aae508c5432b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77c005249ebe96149e6b64ff85d42861df47210f270664ebf3e8c773617bbc21"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d8293316ef6be9219a5badb2df2652b7d7aa6fbf8c42b58686561e03a7e211bc"
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
