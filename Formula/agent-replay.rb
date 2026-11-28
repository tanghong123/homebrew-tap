class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.579.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "238c832a6c79ed4104a08bf1b38d5cb36678c91c9002d67ce6728499767bd304"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "46851cd4025b9b7b00d0c56bb7cccb038a1d4816d40e2fc7bbafb3e48abcaa13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92c372be429a8f452917005d4c9fc9cfdf5ad6a6a2fe60b175869e01891e5553"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50dad04bdaf6e28c1f03c8d6b317e7f5b189464bf6c47782a68b5cd4a7bf17fd"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
