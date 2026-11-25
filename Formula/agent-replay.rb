class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.564.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a01fe3d9c25b20dc0fcc07621fb0c64ee84a709b44ba98596c4564ed50433a5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6df0eb623ffb3bf4acb92357d1aea91d700a6db0fd8780d50c71df3175403ece"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3e5fe4c6cbce6b389ab159b8fa3b5f583c1036ecaff7b70991402705430a72d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4a95c2bdeafcfe81f2448bfe5c214daae4226d9bc1795ce3c2a79ed53798cba8"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
