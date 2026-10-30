class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.449.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6fa4c17329edd384454f75574d8a0eaffa60f07e08bd278d2ba5927d9b1fa139"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3868241704ea81207717f5efacef69a0cac91f8d6bdfebff576d141e631e1fea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c2dd8571e7eca1806c5e8c77c54f4442305500b09c90e5e7e864af3077504dbf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9bbafa6fa7d9eba7f0cb59f9a6ef1f6a02cd1c69388d75780c03968592dfc19b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
