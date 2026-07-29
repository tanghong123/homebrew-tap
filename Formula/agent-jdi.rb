class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.9.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.9.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0de4ae076654c158e46f0ccde6720aa044e906071119ec351ac3159f8505ac8b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.9.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "31e81d31f9009c94864cdbe7fde7c67921fc1b39382ef17f120f71da7e0a4ae6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.9.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d2ac0bb64a10a5c68dfd8b1475f3a8ffc39730e91cb6647535bdd4e0ae62335"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.9.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aeab52dc1121f2af041097a07acf3433ab0c744cdb279158e7c280df4dea6ffe"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
