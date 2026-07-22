class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.8.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.8.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "590e6a555fadeb5d59f2c25310e980c0be5f27d04cc4ad56543ee0aec98926ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.8.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3696458d6635cb6eaadd1bc6de37ded95a27373e394a28ff9ff94a9e30dd46be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.8.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8bc9470dae6ffc2f1fb750c6305a397bde635abc0699043dc2628c7b57ec2e6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.8.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa85528da9584702381f068d604d1a89b068460f0414f7df5086c271972e1197"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
