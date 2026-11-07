class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.486.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "146ab5ff34faa3c2b9663a457f8846047fdcb74e5fe2ccec193335d98ac28a0a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bacdc29550f50c1e73a2ce6c05e2f11d765b41bf653b68b762cc38bcce459334"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "788c31d2c36c9263f53692efe6462885b1717238b23476d9b2937d549c42299f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61255ebac41bc5b13d3431095ef83cfba648e4aae44352ccc524b364a03cc110"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
