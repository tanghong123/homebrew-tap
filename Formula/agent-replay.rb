class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.492.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b4370e07352fec74afe5b8e423ac07e6f12a713dcd1aad75ffc0fc33e9d383f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8ae3b0bc36d8406e03e0651f85783010e7619d4e913aa0a175c0b20123c6f0c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd9dbd2367f214a9e076a08724b1bc38d34bc84c4cf13dde077706238dcb909e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ad7925f94f2392b7b60687e98d5004ec94c504a7322a6662e2ba87432664127"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
