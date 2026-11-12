class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.513.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ca5d6d1b706b7a3e0f434d1b1911b6fcc70e123b8475f01da52410216aecce65"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f87b971fc8f75438387b7303bab73bd1568446a3f5bad285bcc01e8a2a53f2c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2307750947bef4e599f56baa90dcacdb560579cb4ddd1480d7380285265984b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.513.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "217d8286faf40298ce85714730f40dfba4349372f28c789dba319b20f7163388"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
