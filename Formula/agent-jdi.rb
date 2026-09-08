class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.234.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d19d77d0b7c63e120f0bb671c165e66be09e0366a80924860bcc5874a8b858bc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "95043b05c0563f86a82d9538ede898d7790abd74c0fa47482664b19f9c58a6cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42b5ccc1f52eb00e96df906c7cac19f447af5f4773febf17f13ba4ff78a268a7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f539e31910244e90e907f64f801d03d8eea18c2fce01b6899ae55841694d6942"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
