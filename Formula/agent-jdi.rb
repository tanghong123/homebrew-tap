class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.373.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1b0f41fd978f8ea1f19c7dfd58f307d540ced42647b441ed1ad75d22d5f56c99"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b6b916a76f4ec223e3ba4429e8c2b940b2b0a97de582919874900fdb28436673"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "56f995084ee63d675b983e9957a102a3ef93b0796b4aa2d08e10ffc9a9836517"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2141b4fff322d6e589718a61b98648fff41a70c7d7520ff1c4e176b325d5b95f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
