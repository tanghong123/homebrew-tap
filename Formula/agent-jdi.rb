class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.338.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3db41e37a9cd63837ae16675fc34e12a654b7803c9493d7754189d8162e9497e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a4c5ef25d3b381ee676a5270e2509bd0994572926e639a652d5d6d366575decd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a620180aad030404cd5ce7dbaffa50c67f61cc541a0da8468e891fedf032452"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "492d586d989d77a0b4435dfa673806893c5ad151bce12937e4dc2ad26d5dc0ff"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
