class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "49c99490e9fd37b21d5ec7e88ba32d53854d740d95621c0f5fd4548a20b94762"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "23290f5a779ea4a4f7e908e5ad339d7af670a0d9588a18ab69024553e0f3c598"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "292bd011d0001b5ac8b4602b6b039e58cee3c444c0e96f55951063e83d93ec72"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2654ca3731fa4a59ebc94a7934fc89f1d41f8f706e44c683a16ba61190e7bc56"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
