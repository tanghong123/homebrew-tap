class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.203.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d45947708390190c05f552f77a48555c4f9c4a5ad6f40833dc644b0bb183f2fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9e4632dcec6faf1e115a9b5f342e8585738ac0872510920098dffae7d3857c95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f93e6e7b038600dfbf5277b86d178689abfcffe0222bb9ab4d99c2b82f93662"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0ed08b5e8037adcc5404ee9d7c293e9e69bab2d1bd84e26c50a1aee270dbebf4"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
