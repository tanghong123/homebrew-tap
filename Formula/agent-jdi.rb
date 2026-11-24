class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.561.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0cca736f23ef025457d9945923ae706d459223014fc0d5b503aa0d4882a38c02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4bf7f057009a3495d46d80de56f57931719d9aba1036dc21f86de47d0815bdda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d759540419954bbebb730692de65020bda81ff7d90ef4dd0c77ff5e0b42468b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bccf4b3c98ce0b7d27b5618421f7874f3e66b84b6d25b4393126bfc92c9a911a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
