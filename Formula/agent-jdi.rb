class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.337.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4ab61fb3b2aee1b0b88645676f4d22a84585eecc5f0b7c4af0820f19839d6b06"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a768eea9b30923ff916530a3114c1c906e343afa6b06b6da6075b5cfebc1bd5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a66f8ed2bc60311cea723e530403eaecefa07dc3ed0f2b2ecaba143f6eae5070"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fabef88580a41dd852347369e3ff27d3cd64454926dcc5458e8c62b1105053ba"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
