class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.550.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ed57611fe21f9a328dcd4595928a8458bdda9798f101c76ce2482e56f3ace4d5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "685f6e81f8b75881e4e85ac5a842426d6abaa82e3cfbc8b1dbf98cf490eb27ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "759714d7bb4a3b479858ad9734d12743131cec23ee7dc0857ea7d99550964d06"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e1b458692ff596e6601825376ee08ee91548f71b49275ab1e7b96f221762bdcf"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
