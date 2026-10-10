class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.368.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "46c114cbb8685fa5d5155fd7370b72c9b754bdbdab0c289d32aae8a4577cd64c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "547c2585c8b6cf3db40ea39a80bcc039ce6d64790fa6d712ebc71fef3e706f4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "48f4b70ab148b1028a5c0596307a3e2dabd7f2f462a9961e79dc71503cf7b385"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b70af919dddac2258f12788f70a11b60bf69ce99723b7597a4c4f3918a3b6e8d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
