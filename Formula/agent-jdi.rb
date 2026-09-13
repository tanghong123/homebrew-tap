class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.265.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e09dc2e926bcf7f99fb87043850e6d4548a54d9831129e2c29fbe1b77b37c9f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "98c337829dae4632e63f52d47548ffcbdc1b0afe6a0f082fab31e002f16a5002"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3634f74daccb7088356c9b7ae9c6ce67966ca4e3aafd8f8c8baac351334061f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eab40263f809b7fb5dad7e48144f9138a30edb89d138dd9bc5b083f0522fb77a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
