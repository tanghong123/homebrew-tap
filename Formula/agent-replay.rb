class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.251.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2a6ec397b1c89e89af2d72cd72d47431cfe4191b3db0bf017e1e79b4dcf46e4c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8fde3add7305eaf900458ffcb8c41b0394e28d50fb0a2630049fd473fa2a30e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fbf62ec13242435644f15c3d033fd38123a91af71565efdd09e6dc1a598607be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bad6036ad0bb3816b1a8702a575d93c019d04a4e3b0b0e4a0f4e2f7adcb27e29"
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
