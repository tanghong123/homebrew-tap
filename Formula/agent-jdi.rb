class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.19"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "899bb5d1d6494ef0b97e8824586dbc7c41e716ca0e111dc604750266a087b502"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f5d533a393b9606c888e473a2814797d414735daaed08fa7fa0951b5b3b34cd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea08207480b5257cf8deffe558e533a21b6171a6463e55b645d734ffec44ab3c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9bb40efbf69e9c482e6fa5fcdf493a64af1352daea93d333cf4ba4274ec2ac4b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
