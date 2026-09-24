class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.296.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0ec83c6eae3de233fbc05bfab0b8ce283c850b601a4d762d6b34a350efccadb5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8484e2568f7883b7f449e8b2cafa1478db2acdfb40dec019e3fca18db4fc72b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "adbed550cc700e47d76be36a941ea02bd94884d097f2c09fb10cb01e3c5b90d2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "04f0ae71a9a96572e8403ecd266cfeaceabf4e7a028fc0bbbe2eb33f4f748b49"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
