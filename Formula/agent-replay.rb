class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.552.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3a8020b6292cabb25af51fb55cfba8a531b95dc8360b6a3c424428c088b8bea7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a91d8e80b01b04390619dd865f19e0bfebe3b175111e74ba789ee00ae32f9001"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f1f1c4647842339bd1608e599eddd516b7a9f60b1125d52beaf5d4e1cd014cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c46fc7521848eee4df7f8ca594f361c1dc25a7faa6183ee55260bb1ada817d00"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
