class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.270.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8c324153b3726037f0bae54770471c2a5fa566a8b2f865cc1990b7035d19c5bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0ceee3b627ffad73ddb9dbda513480c5f9133736938248ba63517b1d2bbd0c6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "40472f31980edc9a2adf13ddebbbe32426bbcde12b3dc05017c975b62ef077e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41afa320ec13e9a60e10e5d0ee9a0db1b2209be4f1666dea36f9ca0a775d5663"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
