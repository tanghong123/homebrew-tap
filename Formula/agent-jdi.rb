class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.11"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "898a2c2357be6ad22d3a24547d46c427485b78ef48313efcb0cf08848ecd8fdb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b93f6e62fa0109114e4d3ec8183bc9c70315f649684edb65c8f89bef0d6a0a78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "46d9f3c4ed8b4c1be31e4c75ba5ef57372f347c408d1f9bb9150acf5402cbf1d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb9b667036f9062c90ac3e14bef6b00d29a5a8d924360599ed00bb92c432e65b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
