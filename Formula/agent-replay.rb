class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.485.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ae2f4478f8abe6778b09bdac7605dc0c692bbf0834b450d53a08c7d18a939a6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e50781c6ab64865bb07d16a7d9c2551aa784f54f8f93f4e142866204109978b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a8c18e31d9cbfbb94aea9027ec38c02f9ae34879ef9f74bc06c4cc1ebbe837c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f8e4be59b73d805e8e8541f9fac1fb8360a9c5f2e9695602e57b4fd74cad7265"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
