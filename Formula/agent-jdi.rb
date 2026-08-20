class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "43748f6b3727476acb03fb0f5fcd361b64013b09a5e56a9c8732f909acba72ba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "382fdcd8e266dda3ceb53fd1f1a894ddaf93560f630b15d8d1a3c8eaf1b732c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3f7751574b0d52ddb86ddbd6dbcfe191ca71ddcb564f0b4dbcbcf0399f872c4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "242552fe71f1e0d84ec1e9de1aedd3dd20fc01a7f3b78f98dff1700771d07223"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
