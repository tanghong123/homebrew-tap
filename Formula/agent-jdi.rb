class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.360.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3548a70ec3d14bb4dbdfcc64bfe5c007765722541f31a7a4645bf862514c976d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8135c76ff92a0952b758a7685618065d3470490ea5ffbb9a549bdb09d63d1a3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "866455f91128835eb8bedef82160801413d4654ccb531ca4053304a648e3f767"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bfaedefadd122464446e59f84e2b82b3c2f22d70d43807df78652134216d1968"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
