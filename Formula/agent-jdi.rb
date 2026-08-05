class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.39.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "200017314e19f489fc78c39f407d7f202065b08ffe85613afd6e07ccee8e4203"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "512e3f009fbb0aa412599d62a6823975a700a0e7df35e9510c688ca94adfc3bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2420069d2691d0a310f4657bcc1ddafb8139a81e33d620b4e5cd7b0b6c7b57f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f37ef2307603c20b5cfa9d3c12770013e5459648a8303f0e4a9de7b6fa6cc7c9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
