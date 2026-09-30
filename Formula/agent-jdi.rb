class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.332.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6ba0efebd1661c9b30feba2ea17dca2180a877fe98b176b2e2c7c85e166b4402"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "04629802aef578086ffc5bb30ea4aff5b87713306084710f0eb299fc8a37397d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e77215904f51f1383255b600de85bd87a4f3084427d9a1a2f216d76227d55bb2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f776c2bdc42b0b5c55ee9e35c7e77a2520ade0cc5020572407f14ef32d9bfdf7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
