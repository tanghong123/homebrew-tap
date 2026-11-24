class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.559.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e13b4e5d09f05c9f45aa9c1ff3d4de1aa8857e668c922cc9b04216ebfc6eda57"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a5cf544c3c77a2ac9abb77ace0e491f086759d8491ad896dd54b72059e10b2ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c70a313f63f405cab4584d0d56e4fc8de1b0f7cb18458ded60b8d17fcbd711d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "869299df20017b24066b60da808c330eb2bfdf47188d822c1b50d3cb6f7ebe97"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
