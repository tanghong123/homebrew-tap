class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.543.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e4ffa2ce11cc49349e15a4ff982ff2f7d2f4edd0f33fb5de6082b8e977411c4e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b51fc760082987a6b266485f2d5d37aff0a6b80751707f4b03fb005f380c8193"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e494d1c2d1410335f281cffcaec3ca336c97ee27803e41986bd4f2d24b54f67c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9dc33c64430875da381fc7ef59663f7a56c87835698f30e903185984e0c853f7"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
