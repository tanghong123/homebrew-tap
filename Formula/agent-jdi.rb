class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.76.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d6021895614ba0b6fc37f7269fddc1f56c5506402006490309ecea7a300e3f66"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ccd0b07ce2d449c5e749646e85a058976637960d6d2c5629c272aa8a1ea191f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bdd145cb9a1f98e7fc2a142d039d462999557d10f373257d65fb57fad1b8f12f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a27f781df3494afeed7df47540f7bc87512665ea3d66b62519d063216d70cb6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
