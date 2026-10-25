class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.419.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6a94d533fad50395e24d74051930278903ba304f79a2614dab0d163ce16e6366"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5627145cea35746332d17acdee9bf056a7a6082a011e39c97d98a054b2684f3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "011ee7fbe4646483cd93dd1a0f26b200fdd83b4a2b3f7e56a392cb209c919521"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "247bb0ab827d6baba2046b5f5227d6000d2cb23a2dbaeb13c9ecb26a1654dd8e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
