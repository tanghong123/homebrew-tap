class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.356.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c0ffb026609b1118b76f4d994d0fdb4fa63899e7d552b35c31e6689e1aaaf8ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b7725e4f289406dab80e4b415a5022e97236d035b17af8eebc1ace6cf6eced9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "605eefc09e8a1697281568b757c5eb66a157841a78c2b72294208b99d416a5e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "febdc3aa1a34dd7a207ce14af753bd0b389ca3b85c8755831ac71e1c4aea4451"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
