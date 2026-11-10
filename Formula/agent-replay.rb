class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.506.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "66a9a1fe01860434b37779e46adfa6a9b1bb144375ae09659a1822ee848d01a1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c0b75efbeb6c4d4ca64f2483c99c5d920300cf1ff90dcca86e541781acd2d65d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "28dfee682a6ce29b8b2cbfd193395dac2957a647cc4293cd56dd9b16a0381e21"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "adf164fa95cd7bec8e5728cc1f93045873f4fb2d40b7492c63113a1b459b895c"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
