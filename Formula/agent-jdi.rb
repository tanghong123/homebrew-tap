class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.0.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "10182bc52ad45278ee6a06cc51f4a458077e7af89246d5fdef70d7bb1c8f9c5f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "bff7c8714ad9d0790a3262cbf961b540a55faab652a18ba99ace987cfc405a3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "998d37ca3a6ba815085a7cebf8a9a0f93d6788dd2e0938e89995af9cbe7f8903"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9baab77ac527f17f58ff87d92bb94f14283de367394bf102b5826f0548864a98"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
