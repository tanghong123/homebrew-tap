class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.79.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "88a2035f931205187ac064bbd61b260b50d5e1b8fa525dfc26bdd497de48f268"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "54741cefb1509e66b2ca6836ab0a7d901b88137e2cc727d9fe672f2de51b513a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59bed8fc03c6ace09a729fc28ab9722b29866356f0a472e3e4f3209c0553f020"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "96c98a73695b784a91244992ef1ebaa018194a89187d5b9d8760df38c22f879a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
