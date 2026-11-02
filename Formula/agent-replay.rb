class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.459.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "83e12b68f18f5b3b0bcc5bce06c456daac3acf27e53505ecc8a08f5d12b90176"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a8565e0df02c131a41c9dfaac85909ac1f2ae02af6f11370bbed27c4a816c480"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2fadd9f18815bab8f6f002a0f1384f65f805d41b8ae0e45129758eeff5469ccd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3a51b54fbb12d84189f4ee4a472f6246da9992da710f247b22c475104447cef2"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
