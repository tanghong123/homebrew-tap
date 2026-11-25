class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.563.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cff74010d8202254ccf05767a08a3d75eeb04c021d17b2d87ff0d30bb0cf44c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "72cbd7d50dc3b7e8b7817f68827c5d10c3a138d985b8a76abe96dc04f1b396e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d26bfca9d713c04f9371209af1cf611a25d094293de752909b4687f004f7d013"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b10fd31ed6e7fb7e736c0d787e3040968baa5b0951301920abba360799c9f5ed"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
