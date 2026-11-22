class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.553.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bebf49a90a926123ffe1c3095a85a48834c564d4a3e5c3e0690b1255c5c6f84b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fa3e7709e48459022f0f043def1d5491e34b0e9d266483e83a4eb26bee52894f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4cab505ef71a5662b560d5799f367d7f4d6eb65181678427327d624fdf5e9ca2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3566158580a2a5eeef93788d292e3680d6db9ac3696d36832e1b19d10139c838"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
