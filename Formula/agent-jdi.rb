class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.26.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.26.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "db91e716aec4f86045338137f1033e908bb4fdb6361882faa158d7a3c42f2a7f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.26.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "09ec310d7597e53b77837140fbd303b9b89a0fe3c6edcc38d402ea63f8ce8f31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.26.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d25f64af4fefc4eef765d601bfbb2ba5f606a286e75c7cb465768c659b0159c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.26.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6e92937c002480a9a3f6049ac7d66de590742cf8a5dcece2cb130e51bd41d752"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
