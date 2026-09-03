class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.149.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "76d278f7e1a77077e2d694c0bb08548959089e437f9e1b32f8526b4eca7292cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c08984fd009be465ae614dd7ed7d0c981c0cd53e10a50a2931d63bd02303fae9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7ccbb3e88cf851e398ed08a31bea8c6923667a21f56c13c77061486debee78b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d0da4ea204cbab0851642e68adaf1637620ab3c4dbe997af9f5469061f0f9b3e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
