class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.565.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6fb1753e53949959851f069b88067a8b61ed354f9e90c4bf6628719a16e1c314"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c67be69e90e32fe556c70059173f83170f240d9163356144a849f5f56fbd1549"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4eab5186c6b209efac7a0f82dbbadf8e357d85f390e5e315517a0330eb74c564"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27977577a7cb64174bfd789212a751ee8932cc1f218f053831ef9fa5b6e2e41b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
