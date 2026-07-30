class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.16.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.16.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "82bb4ac65b57c355ed4ac892049b84e0daa71ad9953aaad11566c78781a51d8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.16.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "92d203cda1c629f3507096d8b1a662f2897af643a1853fec48b7db101c267004"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.16.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2ca0a3b7cb6c7f03e5c98e47947578d6753f33d2e9bf27f33f6d97dc296ece85"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.16.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a15f9b493a30558f505a124025ff5ba97e411610f5a8a49b5e5c2314dd116030"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
