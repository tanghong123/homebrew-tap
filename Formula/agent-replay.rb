class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.542.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "efdbc7e1a67d4109e181d72632418223b620a80b8741e0aa0d08bc90c0522096"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1d2781134dc679b9c8af7a0d9a2e709bd7b4c1625958bc5846bbd04918bcc6cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9cb7ae6cd382d969070d8ad178e747fe48ca469e87de544a1cef508ccf94d5d5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a58c73fbae728c8e05fef0b2921cd144ed67cd771dfb901d62ee7b87affb4b1f"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
