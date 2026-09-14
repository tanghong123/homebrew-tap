class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.272.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "eb8b229def87c84578b78837ba9fedad0d97ef925713c20c89e7306122bd2452"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e15e813c4e8f01d0c9e92cd526d8de1b0e56654d0e96b689a3323b1aed1663df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e3125113ec1e6111c8a3171ec78c730a0843d701383f6873c0542c68f16f7bbb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dce29b63e139979e60403320036a82d19fe15573ef2228c2a81fe610926642e6"
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
