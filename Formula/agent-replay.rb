class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.521.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6e552dcb2034d585ffa00513b758bbf74e2071edf2dda1f9c417a8b44e080aad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "894eac1a0602a61f768e1d61717ed34a145df3e4d9cb1110ca886456dbd86dca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "20b6eff6b6c8a6cbbbed47ccc5b49f7cd8c271ee8c087eeebd268896a1b24c4e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f838ba9097b5d34bcb6b20948437d3419f2768b3b933a1f539f7e1a42f0780db"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
