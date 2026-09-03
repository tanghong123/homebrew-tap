class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.138.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "761d3c0bcced7f887cf7dbec98b311d66c6cbdfe795b2d24592be293fefa1dd4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "66876ac0df12e514073e08c0d745437506560191fa2cec09336dd4072f0f201f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "914d44c6e191b8c85225a69c32c9d40ac41f53f62786aeea9d05f8be5eb1be0e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ad07453782d9c480569106e0b3e1d1f14fc5f537d565947c60afd5a4ebdd11ea"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
