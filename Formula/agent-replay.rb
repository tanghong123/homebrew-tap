class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.511.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2cb6300b6e9bafe64567c13920c00d7d084131611078dec71583f819720cf4b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "49a3b08861c9d0a72470f25b30734b74332b907796f624e2021fdbc6d9555ba7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f3cf6c3ddf3b70fba43e58dc4d4bbdf8b987cedf12192c754985235c3d8fa5e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f977b6e77d38b1ff4a4bbbf2bc82e6a480ba7e4d5b22527e60f5a07816608d8"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
