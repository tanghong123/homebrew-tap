class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.299.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8f6c62ea5640cd05261c612df0c3b18390694d362aa5919fae77f6df12b9b9cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "83dc1806e81ba2175cb018e7b2ee51c009b6bf501b010c42f9bd6cf257cc5675"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6012bd7de822c6488c2d69a2815cc0fae6a8492d77e4b22e70d62d51016089cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cc3662b314c33045812d468d707129009f3a04612477a0c4d3ff16e4422630e7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
