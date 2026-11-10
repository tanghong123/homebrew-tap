class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.503.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9786d1ea3b4db31155255af37bd88a1abdd70562eb6d81f96d5681a9a8c02bc9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1e7600bba8c7ac34966b4ac8a45539c6d47811e608f0165302cc71c2259b5236"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b4befded394e70e7771389f574952bbd4dcf106538a95f63739e26901ec14b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "efb677222e12dd67a46530247f080f32f06255e203352437137598a2e71bdfb2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
