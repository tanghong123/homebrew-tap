class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.98.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "78b5c75a8f5308d5891311401d832d07ed0bc12b3a65a0899e404024a9ee6abe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3b6ceec1b8883396492991d0d2c646a5bc569f79e4c62c2aa6787f7389ba9725"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2ebe6ea287472caf2763715c365de283e069bf56d04b9209cc88df571365c5f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0316385914f596ccbb243e2c344c125eeb8b637bb067566da1f90a4c11d60339"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
