class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.457.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "aadaab9d76a24c922bdc179598669bd69cbe5c37dfb75537f4fff0559c1e900c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1b7d83a151a41d1de96f2c0cda91f1c6a33728b5b135fde27b789705e7decf3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6e05c002d49b18b21abbf73a53077b623bca194915d09ccc388dc3782bdccb21"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "40ba890db2a85306f306a4dfa51ba9c3a974290f0b2311dd61b54019a10794d9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
