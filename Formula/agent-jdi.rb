class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.389.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ad042123a1916b07254c0c6ce0f28e8f1e45bccfeb44f856b62a8a9bb2360f4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0f27b69a34713ce0e9ef8d846cb6b22de92e21e0656f08ec137e051c7b7e4b28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc4059448c4796ca99d0017872a67cf011fd5d72f56f2e42544f5aa2b43a64ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6310005062c2b85373aba2f0fea1fb03bc1e353fa83482c388cd8b7586a5c5bb"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
