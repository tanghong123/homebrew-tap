class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.198.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d49f18e745d97df964d570ae6845d53df6536a8afb3b0ea9cb913060fd5d9cf3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4b4b075211b0ed453d1a8daaad41fae62338fdfe91222f08800eb7875f9b4256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "643fb6ea1129158c964b36f06d2093741737e086483513a5a04ee0e6e6c27b71"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43cb7b5b60f366fef6ad6e55ca8762f013229fb0faf3c46af3897cb76255d90d"
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
