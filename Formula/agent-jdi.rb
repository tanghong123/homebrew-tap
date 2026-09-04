class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.174.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7edf2394fcf177d1ac2d4d89225e8c159b6a650b4b58a0933cf2a2fb023fa90d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "68751ad7f4bd825a7938b87b4a2827ecad0ca37a2c5b8a01893ec5bf7acddceb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fa0167f27f1b4d5470657b748f953e52527645e6ce4e2ccef1558ba3be369540"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90568368445deea5b6e301cf4788fb656c8e5969597d219eaf1a6cb68765d2a5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
