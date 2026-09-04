class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.159.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1d66eefbb1f3e26d3dc8bb78c41b78e14cbe750edb17490301c89c13f6d5c9b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ce3c9f88bfa282138a4b38bda9a152e13d772c865a1a85c6b57bd38318b24053"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "81e9230c0433bdbf25908d97f3d1b2e8a8524d116cfd72b31155f15f93374220"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.159.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d06a46c057a14e7c445ab14ffb12d123a350c0ed9d8094fa48ef15730a147c79"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
