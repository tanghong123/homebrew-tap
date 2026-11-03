class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.463.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c15fd48a0c62e9ffad8702c5d0d8808737967dde11e37f105fbb69e63d3407c7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c96d873c62ba7f5ab9bb82886fd3c97b27f96fa0797e25f433bca2a6f93d0b5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9dede5f55743b88900a984b830234bae11b861ea9ddad03df4084fa0f1ea0d4a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "968254d6a270cbd0f09be782b6a28d5ac2b8bae68be93eef71470b45cad5b4f0"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
