class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.325.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d6780f3f3fe6190440672ceca023138b7db98bed8eca25b6e0902524edefcef4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6008f682127f250237202af29c1ec28191b6f79b774ecaa941db90ca6f72d2e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fdd1be7fada3139f03dbafd64df3a73d5b75d0f17e7373e664dfce7486390b1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "091faef4521484b4a603768dd0625054b2ee4caca96e1a24084465360a3310a0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
