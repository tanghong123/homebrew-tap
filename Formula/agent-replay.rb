class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.520.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "619df392539c44d9b05502b82ebedbddd987e55e25b4d4a0bd7050bd74b515a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "dd2483cd2aeeae18055453a2ee456370c6f728790e8d0d6654a0722756182eb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b0ea1d7881b70b56c8e60ca97d6c22e343462ea13350c5c82b6039dc830042ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e276d9a0c1cf93144f4aaa948742009d3da1821f5facb98e24e3b787c499bfe9"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
