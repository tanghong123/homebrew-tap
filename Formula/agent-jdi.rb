class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.195.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "488cea321355d07b5e65a23c764827293d1e63a9dfa16bcd9d86f138e4e5ec48"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "396e87c6d4ec50c71944a0c7ffa50c27f8a5715f97a84f9e10f915f7e212871e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b672edb0ace5ee4a5706af89add7025f477c5e5e50fa48f0ad1058cecb0c36e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0460daaf9e96f650abf370b38dc3f8ae2dd83d05182e6b9bb542f167e4113570"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
