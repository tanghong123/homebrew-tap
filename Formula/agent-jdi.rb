class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.6.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.6.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "30206f09457b0c53154440e6ce64ba1914413a2f5aa044af373f40f33dbc1e90"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.6.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "bb25d853f1a35df55c83ee56a8dcb1f447c7712318dd5ae97247e7ec03d303b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.6.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bdb32dfed7a48827f5ab964b6b618c9286d43643606afd8f2137caea8e6727b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.6.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b387cc149f5ffd75e648c5ee6a83091fa044af91342cacf495a4ee6bf940ec2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
