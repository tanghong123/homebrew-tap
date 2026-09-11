class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.253.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b8419afa17590d191fa42808b099603912552dc5e3983d25f33d0cb5a37ead4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1c83c1faaf3d6e29081182c2471dd8da80deaeff237e56408d7528e50db83a0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0cb15fb27a90b1f3c7d177b1add0e8359363c70851fb49dc75a5d65fbc7292a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3a80268d070f791f428d4f95db7c8ca389bfe6a8cc09db464c8013c4f722bdd6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
