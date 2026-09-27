class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.316.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "626c1754a95ad41484770b02258a8f2aec2a8b7339e21d4f9ad51017ccda8317"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "31828b3a72aa3588e37188d9f49fc11f850bcc13d425a2f0ea6e614fb6188a35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "137972f31b85b6de3b4cc6995cbea31a450ba0a6c75132f9d18738f6926d3a32"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "277e77a34d6947cd372708a3df24defe379db5e7d163a47ea106e461a87aace1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
