class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.389.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4c719ff58f2361142fa98dec937850d2858e683b2e5055a506015c790caa3f31"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7d97ada3ea913b5d25f5b2484e80dbb114713255e74fb0efe39f568610559725"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a55d42ab4ee65820073ddbe795d03b8d33c803f03bf64fe2d6aab0cd03d78e71"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94b0ae14e7a0c9d00d986a76e107b97d7908d84cbb33bf4ac11485e0ae8c664a"
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
