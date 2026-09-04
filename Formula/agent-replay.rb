class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.179.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4f90bfb8e86ca943d6a11b35fe0c36b25caadc1a36ddcbe8a9f4b406a1defda0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2df7831a1627ab0f89519b4fee50cbc56015a5b1005f880ed62512d3b78664a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c58853b516c8bee6a08250978dbdc80c1920de65defbb5c2bed6b546a7648c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b1b4554d31c860431e2a3789f7dc60322c346ee29d12102111d85a4124f5e9f"
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
