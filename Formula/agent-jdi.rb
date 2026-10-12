class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.372.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6a4f41bee39cef7a57d204b7c34ed93618fb2eeff4943379d3d355efd9594858"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0da3e4eb02c4d7abb1620fa0b6cdc7385101a861c2c58572f09e11d09b80c28d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f660cf31bc70795a71de9c10651d87c1ab90d1cec7278a5824630a71022ecc6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a81a848f733414827a627396a52269942c75a9b9cd291ecbb8c513d2f126761d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
