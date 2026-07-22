class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.16.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.16.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d5e023b365868139833c693fccec1adadcef151b88a30d5c885c763a6e1c41ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.16.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "63db1ceab2d2c164bb85dc54dcd020ef13e4fe887daf7bab581632fa8e98d318"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.16.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b4881dda2ec6f9582d8894fb6e6bebdbd9f897021776d2b987975f6e0af93385"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.16.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c14bf28cca0e5e1873876b0aa0f9532b96651e169d03f7afa45506d94c59d82"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
