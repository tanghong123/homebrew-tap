class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.499.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0e24119e4b8617723e6a48ec8b257e024095058d03145383fff2ab54ba3ed2c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3c985e86009765ff1d5b7220e321ac1663d6c438d29cc7666268cb1f5a3e6118"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a80e25421ad94b915acedef28b7e651687f1e55c0dbf70b42d9627b6007298b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9be66176486030452d84388d6a06557d62af9b8507f1af04f7e181b4efd1fc3c"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
