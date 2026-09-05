class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.201.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b6cf455736e8830ed6409b79be788c4f01df68283d026abeca118991c8345510"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1a75c4656ef66090eb3b47789b8b7fed3cfb65b25c22acace2b29b76c650446f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "567ec7c5f6a5215983a468714e0ddb2bfe4734c9ed56be714ede494f868dd3c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9dfe38fcc85711d89c1b7125e0c27805ca39aefc160d26446c1ed842af0dee62"
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
