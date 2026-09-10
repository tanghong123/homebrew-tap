class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.250.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bfc6c05f2c3c8103b67a78ed96289bfddbb832388702ef19e21b2b517c967ac4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "710e7e46f41c06eaf2e8892e686a5b8042258554d0826fec00f4b62bd4098e26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e3f310d055cc5dd631aa3c2061bfae7940320dd1b21806abb2494b83fcaf1ca8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8265cee05f52c08a28b925798b96d41792de34755797a94c41cf2545b2944131"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
