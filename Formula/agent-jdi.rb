class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.340.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9d91087d3b326efbb2e9714f9d5b8ddace4c4aa8d92c47491478946372fdd37e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ec7e4964e56c683c1ebc9f6d4db700fb53a776b3e45ebec02b7f68d79e159657"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "518464a170113757db179f2dd712b27744dbf6324e0e2cceff0c4b170ffe3abf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d391a22f48fefdde7773f38a944b063e24a89737cd66dbd728272f5b843d071"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
