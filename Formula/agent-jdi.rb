class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.497.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bb5a8cf6f3ea618154b5b46d931bdf2b09dcbe40a4a103353a36a707d39cc1ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7926eb5b6857592465504b4dadda0a55e1cf109a8089e4843a9aa4760fa1710d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf382cd94eafb2a7727f3bd0d22b790b44aa38370e42274cc7bb776a6c17b4f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "720be7875eb5c55156a8a1616050bb3bc06a1950fe99e654f9f11391c0153fc5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
