class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.238.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "688a513b7a76618e355f5b071ef2810221ecc0cba048a2addc2a927fb6290c9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2ab92ed6af2d616fe92342dbeda42d744b07f39fda332c020b5d5fe874a76e9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f7c8c1f7ff2e80104cfd368ed47baeb185e078e96a3e34f59e6a3f44f843446"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6fed909a5d084344b11f521438c86a8d163fca6c9afa7ef1a7bfc01a58806720"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
