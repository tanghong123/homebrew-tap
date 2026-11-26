class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.569.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "729ff594b03e4faed5979e1e60c40197ce4c4dfd35260d6db2ba1050cae60645"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "09bed775a4f552419e18088f39174a46674fa4dc9ac82e7b17576d6010877908"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "888cf0f7c73495f5c9dcf1578ee2726ef8263d572541ecd877131c9b266503e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "73da0d9d7c3a24ff87ab50cad1b543a26c41ccf7e26920fbe18b3f1ee87a7ae1"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
