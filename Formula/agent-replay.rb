class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.475.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9b1c5ae7d5c914126b60ca58c38dba8c64d1fa9c597e573370c1a19d7f31cdf5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7172dd65d17cbe520c7466ae865c0da3be9676284102f7f414a760cfce6ee61e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "187ad18d4857909f3876685f50322427413a36e578af5d6c76d6a8c296cbc862"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "99be3ff7a91da409eed4e0f1f57201921867853ec91bf75bf73fb74b7ef01a28"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
