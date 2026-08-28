class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.111.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cc6a6ac9270d2544592507c917b0ad0a434ba82a84f03d7b6b27ddaa68020256"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c4d48bd694f16add3fb83c5e08c411fb8dd08522ae5b50faf3c32a7c623572d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "10c3ae81b7dc40f61219ef7a1f6a6235194aa09d64409f75e46a3636fc0caa9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af77a693bb16d706a520ea6d0a9814349f03654109e63a28d472700b564a63e5"
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
