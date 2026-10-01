class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.339.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cefb65b00e01e96c177a3314460439db6907a34fbbc73562389966f2d20ce29f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0365dd38cc2e56edb2c89b9cb62beb0b2c5e3bc96eac13e34c5e148c364e7a49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a59701631cccd06b55d6b6f2437daf151ece8ca530daa8503a5a556eb101f2ba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f563a0c890d988bab2cada9e79787d8d33c0251a868fa212217d8f74e3278134"
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
