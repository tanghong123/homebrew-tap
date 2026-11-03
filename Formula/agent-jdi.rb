class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.463.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fbb1dec5e5dd24ecf7a2c35805022c99b007bddca180d3e19e7f93e2ca26022a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6e6fe672013209b8a74a316fe9ffb4c263ed485e954bd792954170b23680e967"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8521504a9c4dc5a4f238e108ca1dbdf03212d4c2c3e7756581b70ecceb71cdf8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "343100ecb8d4ed9f6b91fff8e2a4fbd7682ae1c140bdad061e12204c48bf7efa"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
