class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3ca575b6e5488672d2820dc0b12cd95c0f9a871e463cbbf013337343cda229ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "fad531e0ecb6b188c8ad359b2056b487ab22f7769d009ebc8cc5133824f88fd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a1921db71f2b85c1cdb068f768213e6811893bdc5adaa982fd2a97c9d84cbdfd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "75d9df08133234686d2cb285f222202bbe0c470804c977f19280bd9868f24191"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
