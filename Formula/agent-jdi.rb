class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.86.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b745e71a098b3d3ab9721e333307bac56bf094b27608ea6dd0e1a66cd2544e75"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3baf03778f547ab8063c51f0dbd75dba851ef088f817bfc4d62900b94d1e8a28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f28854fc3e27a168a0d3fe3e34ba152148d981b98b1a8a9c9ff5b194a84dd58"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d1712b4449a798fc1600f05ca92f6415b489b2cd4560d81d92b2e8653e88f155"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
