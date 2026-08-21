class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.98.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8dd654a3ae1e46c82758c5c43cb9b7319c93e5d8bf5231c7cb277a232472500e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "de95493e0b879ca043a1219dbb708a47b96d34d5108cf2cead21a4b5260ad443"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2da8489e4655914fcd0d23b5406e5aa1291bf39e21107815e2c2dceb3041e649"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "acd069e5fdd567f694a325a5a69c1c00f6055d18a2458521cf14eefe72be27b2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
