class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.109.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d8bbf1f8ec8d0d8157ce3dc33d94dac4359e7fd97672a8f8804017655b93ed70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0a1ea01c7cd2a3e5feafb891c12580ba9bb7edfe6b66c361ca7873aa4e388fc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52e431a5ffb4e79b15efb9b712ee55aa3accb411a39275f393fe6cd1dd55fe87"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6876aaa4bcff17b10fcc0267135fa06daf08b226e69125195f70135aac7016bc"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
