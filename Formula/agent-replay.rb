class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.530.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "92f1cf1ee43e3320df34c156b9e7d579db8a7d0659a3868dcf2d3160742db964"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0f820d9a73ee2ab004f5055acee7cdbcba92660fc3179718372e8db167a88bbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "80c5c2f5b35d78d77f56657e39711dc1c80e6b9061da81a909ca6b5b45967796"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4eb28688819f4aa130246037ac00545a240ca7f9426ec3aa20ea864b105b02b2"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
