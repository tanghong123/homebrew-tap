class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.31.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b5b85daa8ce192ca10949d2b38df9642bd2892d88882c3a744d60bae7e7b7583"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2f6d3b361e1e1f5a623f5ca4a003c8c11fc7ef9714454a8c76bd09b2261a6cac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "130ff85f3a1fe7d91d8d07a240149661dad0c724d39ffb5b373d87083bbe1b83"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1beb5a4a9f21038844b9fc58d304dd2cf1921aec800e9f2001b254159c659609"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
