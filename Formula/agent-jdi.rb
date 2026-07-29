class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.1.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "47270e0cab1f152667d97727c948cdb624b6c3ffa5f616ab2814081bc168e314"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1d331cd43f6379b8f1f73c9b6108ee1263dbba974847825b914cbf0840bcb12c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "afde5aba26b63d0acb5e95744b899cb5bdc6db3ac2a4eb5ea48dfb85e495b717"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e4a6a1266ab8f1ba062f6da71ce0e4968f53d6b18e47dffff381b8eda8ff9f6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
