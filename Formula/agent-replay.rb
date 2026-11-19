class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.538.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c287e1a30bdaa06b832015f51cdbc20c5c2860f5b23233984465c916a9810325"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c7c4a880eee579c8fdefbe890966954ee6b7f3b194d451071a7e09b79a662681"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c9b7c5ed4db5317dc098bd165e01c670dc637f5c0faf891ef9971a383d68ff5d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8ddebac88a244fab59b35533e9d0ed70c82e716195a78c80b09e252357f9722"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
