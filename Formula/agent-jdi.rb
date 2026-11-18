class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.533.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c04bddd405a5e964ca56c100c5e3ab9f0ef04ff8d7d156886917d6c05dfb7290"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "533984680974911bfa9c43f39bcdba52f8f99f4d7faed36bf449e79aab56ccb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1544e0719508ce411e2398316150dedc3f21fec5fa2049e1f789b2394c43680"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d85d9c466d8144172c730dafbea80798fe157d99ad05df9c69f6549e3a35df74"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
