class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.64.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7f3e220768dd22a193485e79139e2222f23de06df918d702e417773fb16e333f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b35054503a2c09439b674e0e67a3abdb2938b26bc33128c60084c0024f2998b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "56bfa5720b25697bed3884103bc09faef54357858b81a4e24f17ee18dc632cf2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b7033276f274c756453b7f479e9b5bbf05c9f00207d56205f8b4d2138fc8915"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
