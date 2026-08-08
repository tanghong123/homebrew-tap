class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "41fd82c369d0d0e20dc00efb5ffbeda7cc1943e1417c47035d9a1039a7c097bc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f4e32efe23954d2f78d745f761d3b8bba5be4295ca8f23f9c5e0552b239400ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9b6afe28202b21ccf5118167c637b4f2850c03b3435adcb74c2df3f7b1c7e0a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f9fc3e743bd0acbba4f94f0a5b89446aaed70a55dc969a29c4b9b5d8e6fa8d9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
