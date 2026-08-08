class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.9"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "71f96b7b9fe2dcd21c877d6b9d9d43d10e714df245d66efe4a283e7a7dfbd394"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c0674fcb63964b1551914240b08c89540c9965df654a9183a1506be9e406b3ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "afaa4d38c0603a9c2781e04b221f003a930598927f5525285aff3802c137ee93"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f1e65307ca38aa9004466607d1675a2872068ce08964df0faf643d9fc5409fe"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
