class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.570.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a7a41dc8f163a6e69ab89ccb444ec4d6422aa542fb03a18c9926c4d59f7f9a1b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ed6c85c82e6514d9b44d1bd686709529c04541b26a7d84e539a190438e8b2ef9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6efd5fe7df217d4240cd7b5d6908c2f38ac0a2d0d2da8283a3861e14af4f4d46"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4fd11deafedc5c9f9c2d410ac824c7453af13c01bf0bb7df636acb9e54a984b2"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
