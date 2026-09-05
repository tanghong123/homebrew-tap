class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.192.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ddc780eb0fb333c52b8ad51c5ed987eb12be401d76142816ea5460a8dda6502d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a4ce1a0bf97290155a2b29d291fd7717fc0ecc789523c17bff644d730591e8e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98304484589b5b57bfaeb800de19d14fc4ed72d4bb3e95316208e4810114a411"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aaf7f095a9caa4f5c4595107e99f5a4657c3d2a507b34a3a61141787c6fdad76"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
