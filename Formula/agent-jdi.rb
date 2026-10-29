class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.445.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "49c37883968f28ee9f7483d586b73f5e315d0690617bc9580cded8683c5993fe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e75f50f1c1e92d122197bbc49fdd83db69fe5e0a7502210a8e81e9bcd7e7e500"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fdd0f6ec0c6d9f0d8ce19915515382182132497bd30adc25a17e86c995fda97b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "165f8882fedcd6da6d77a21f9ebe15b8d47821337ac6bc803b3e38bfa4b4ee0b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
