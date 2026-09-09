class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.241.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cece3062b2b2589b478f09f652df5198c616e50218824274cb35e69943df203a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "83f5dd7ebf84e7b2316949bad0632d7a999ae5947a03dfa25d82b700784c24a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dea85c813afbc0bdea8273c87e274ee128082e432af96c418d814df21300cbf5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1648e7c0b483baa5fd7cb50fb5189c5ac363b16c6b8e30dc9a4a7a5f1192e6af"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
