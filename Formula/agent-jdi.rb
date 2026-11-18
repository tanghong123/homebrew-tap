class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.532.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "470f259812adbf2919108ab3e633acefb7d452c064955f259c8aed760ac86065"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "391c24d101a940cd6a44ad4f50200c6de897d42920a944fd6831def4e9e4de4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a09318703296da4e9a1f071cb3b6e8adcc861be9e2eeb099838e025563b41267"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9402b074efe5dbc720d574c4458f9d34b3d45eaab6aa8cc3248875e9abaa6ad9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
