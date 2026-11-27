class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.574.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0aa345f9851911c74f04c60a0d964e0654e503e9f02ad778021cd1c9a4f1f778"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d3ae8c2bbf5f47d25312f65ea4ff0f8864e6d8b6c696c004bf6c9fa2a5193651"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b718cc6a6f1468e2b5c8e4a74e0b2b7d6b18a3d1299d9b39585d70dbc9a2f7cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d3d1128fa8e09ad8f43fe8d37529c30cf8ca549862739cd7e845847f5d28362"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
