class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.321.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8765af0be739a4b727de73cfabe42abfecc355b06730746cf19f5fe9668f17d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3b3a50aee483b5574088bdf70acb42653689055015bf796a3b606b01f43320c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d3a42d8b1a48bc1b544056aedd48acfdc7bcc27dbffbef87f27f267f7b685f3b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b2bb2b62206ab2a67a69f1b74ce4cb1e16fa0d520833de68916b45ae06cf91c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
