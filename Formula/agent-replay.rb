class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.498.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0fbeb1e1e58c454933f440483c19502f8769ac8578926d1a8f4cb9962b6b73f4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "039dc64891cb6f50e6c61c4282c6da0c3f5bc8158f306a9209fd09711b268531"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06dc730ce06f59954b47ff52c9c0228724d391220b8b66c0fbfe8a716fd47457"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90ebf843a721f4d3cc9a61a61e4b40d3b2ae739435fbf9ad5b05d3cd360449b4"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
