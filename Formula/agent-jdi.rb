class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.63.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "65982d19c123782ba4098022467052212fd2662cf050573e7c11e700ea21417c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "37f2cff1e545cb4891eede84118b0f6ae10f3fd46431ba50eabdc8401fb654d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e0815060b9deba553b17924f05638cec35168e7718a1f049855e57876d1cc92e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89bd942090851b6c013244f494c649239b5a2682ca1a6b5d5f41e58303342f28"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
