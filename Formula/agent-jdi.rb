class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.207.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "53c61c2d0f826be2de303e91c1dd60f4b5e1a7bcde7c312b823efaf739d5d85c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d0fb586257873f7c9e285d7a5ac245c1f3aafb69421da18a4407a57022c8333b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fab782ecea2694d4a3cf5bad1b08afc4de088a8424d834f9ec8d60308a822982"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3eaebcb7c96e80bf3c53e7a41d3716513b4ccb1c5bbe82948a9408e0e1c497a2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
