class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.314.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a6aa40d81d5c0ebe8578e3df29a55421649b99568b6d4d3b0a9c205fe59549d1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1d1f4448c5bc420b8a9be551118cc21d4e8147b78a770dbdb9d14958e2df0a7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42ea0414c08e6b80ab9a4dcd31fa287c397904feeb4e1815151d7a343f9b2a0d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.314.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "40899ef4d83a0583c0a306ddbc2d75b5fcc171db2b390a981c9e1d3ee71d6c20"
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
