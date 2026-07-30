class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.12.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.12.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0227fed79ee31c172ed5d4ac2867e567130d025b12d37ac8a908d399e52822c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.12.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a162f00c6245ac309231535c3c540e3f5594525992d54d94cdae5c0cd08e357e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.12.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2ce38278c3dae580c0f51b0b0cb76f481ab46ed1e8471559be3ab16651aa3a12"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.12.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53b0ceec9f68e4a0f6c4148e28cddc0bdb004b5a5619c1d927d7c50da468e65a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
