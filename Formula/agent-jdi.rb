class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.8.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.8.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "01bfb4497014d2c0552b990b18f71ec479023a5f68a3d563ab642ee714ce5181"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.8.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8ec351b5daee09831109099d68458acfe477539f1b2a2da7a71fe4903c47c8f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.8.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af77f02c537a4da6fdcc53e2412b97f44fe7266dd8c65ee161d1e13544d706b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.8.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6f0d711454ce01fe460694fbee93cd14fe5234efd495076bc6e880f54d810dad"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
