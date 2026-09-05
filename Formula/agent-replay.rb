class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.192.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1d8aa51def8070aaba0676551fc5c07e7528d03fa22e362a1cd07ec44cd72d93"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8117546161de4fdf54dbd82dd8a2b72098c4ac6eab7d966db043ef75ebdc951f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "66c865b176403814816b5e3e844f55f81f32d4492fa5ce802621bdb8de10eec6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "358e80150c03e75a6ee7c8dfb480549bfe1480f27d8331e8e06b8147479da223"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
