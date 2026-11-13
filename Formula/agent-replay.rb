class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.516.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "405eb20810528839b39ca149288f97a525113ddb71bbfff3e9927a80fc46f6ba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2e0dfc8419b434bd79192fe61e6371510e650cbc1b135347cfcb3ea8f56f7efc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eb1dcc0355cddc98e1d2af01d82f00bb7a500fa5ab01ebecb600ccdd3ce2b647"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8242754bb5066a83bfe5eaacddbd39f3520b330b250c5d759ce32d89326186fb"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
