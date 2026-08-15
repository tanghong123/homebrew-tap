class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.80.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "eaa5779f65d2d418ccd930d88b277a5eb88c3a6a048fbeed2f7415da09b88183"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1adf3ee22fc83aa0c6aeb3606e1cd9b51fd90552747cbd601675b67095ef64c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b5d0e502c7cec3c88893d7b2cd861b2904c4638b754d0ab617a573ab66753027"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6e5d98d5ef87df58bb42808166b57e4c92582d0c0fa2ca3ab9468d855c480e8e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
