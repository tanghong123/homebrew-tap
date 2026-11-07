class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.490.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e2025bc2d6ed4c6ffbebba3ca8cd1cd2138b7404ea54796d87a23390411ee9ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ddcea658ba4179257821a238243acb4ac90a5eaa7971d7c370ae0bf1713048f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2724183be3d39d0cb03aff5354c53a7afdd96205323b53162630637c10c2de56"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b3743df8298fff5dbcc28a56917fd3319b3217eb051dec1b47c4274d909553b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
