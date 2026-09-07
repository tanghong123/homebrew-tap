class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.220.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "402a1b71cacbe78318684bcb049a430f947f4f8a58e90a4e39aef8400f6d47e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ed2dc8f7d8eec582ee5e3c878471c9b9179642cf582f969f914cf136d1684875"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5d0cad1d524a8de6d4d7adc9a71c7c019dd306a1f11d86e3d406695159b29d61"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27cf6c021ffb1dce4f09ec1d3d453dc2daa60d7c040befaa9bc7feae9e383b2c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
