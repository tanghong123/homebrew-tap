class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.117.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "278830de90cea1796b2696d325326184d96bc6d3cd9ab269b88baaee0467c467"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8a3a4df5cf8af39bb83a25460ac74cc8f3882124afcac3fb085d1cb5b354cc56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6d5691fa1945be042d88b06c6903ae4207460d2e332da1b776b46a407fa4e41"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aca5bc5cd292294451ab00b576a5723a1918b94f4f8906e5d5d0ba0bc25161cc"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
