class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.124.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "92c1714879fb0fe9eae0a7df8852b07d7751399333c0035d7ffaffa7af36e9cd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1ae346af6c7a58c39b0f7d10db88df2c5dec172c3730641d122bc402c9241266"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "607d651e59f2652a8e5e5cc9dd6aae4eb2b7a332e89df03babae732277321f04"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e0e193861b263459c7a805c6c5555994e9b8c85573c51ca39912783234d7a353"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
