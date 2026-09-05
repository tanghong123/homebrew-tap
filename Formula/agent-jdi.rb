class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.197.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "02febebb28e7be350344565ecfe7c618854bfd9256a08180eca20179caf4f0b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9da07be4815a78f107426517ed736481904c5f5598c1ffd1a9fb3da4d9d4ff7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc299c61b82dcebf2cd20cb9d8447ab5314aa87e11d442e0a515ea6567ce4ab8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3c12fd1c6cc7f2251d7a160d8c6b27d484a486120e646e07f362543b63f3749"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
