class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.295.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a3123b6dc0ba9b1ac4d475b2eee1a8db967ef5670d21b71a80d4897d9d2ae376"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "795e1ec4e0e636b0d4d96944444b92a4054718a4bc9b1c946be1e64dc679150a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22d6272a106755ba32a684d3a1746f664719f0f7fb0e88b0366d3a8f4fef8158"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e23f7a459f2d14e2678970113551b35ba79601457698e91c7b071f411a680c18"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
