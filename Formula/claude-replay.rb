class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b630d654b861772e6b499d4fd76c71b979d907bb7801dee9c3e9dd885abfef8f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6a4c95e91efe2d185dba40d072efbd7b6da36fd968df3b38e72b4e21c4ecedfa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c5da762431da66d552c92bfb438059e0ddde5adef9f85b4999afa825fd670027"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.3/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2fd04043a07a3587fcfc8264c6a2402c92fe2e6a97561c5e3eb6ae7762d19c88"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
