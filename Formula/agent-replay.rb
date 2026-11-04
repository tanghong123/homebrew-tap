class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.467.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1e7fad0797676bcdda8dc4cb29e94677810d6b03f5f2bd24b91769a7fdb71b82"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "af295279ed8dee6cebf96506d8decb104383083dda99a9c09b8dce36abc961dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd0081345c145dcf63b0f9d22387faa82df9f20ddd203d37e1fa892fcf98a41e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33e48de239cad17b0172818d908f05713db10292534e9647fd4681470bf1df2c"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
