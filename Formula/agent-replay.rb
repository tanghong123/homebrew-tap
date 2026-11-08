class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.491.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ba4b8379d1da02933af32733615ddc4a5d879f37731149e57e0c8938dcffec15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "086e62e357f581522496651abeef9ff8a7bc4e799865064d5f2af4a8cd1e2dd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2ff9f6b65e3c42cb38cd8cd6db8417aac07e8d35877c224c2d90dcf08351bf79"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f40b7293dbcee5a15dd245ef651a9008b6626821b281f159c50c02520e48e2dc"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
