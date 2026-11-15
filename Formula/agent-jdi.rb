class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.522.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fb8ffd5a68879524e14494a78b76891adaa7d31bc367ab9551da61d4e11d3e82"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0aba747a22d39bf17306ab569a3918490d0e6bca1f887c795494a528babfee18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7b6ac12f5fdb29142b474b4864cb4cf92469c6e08cb3a8a7ab40361040ffd34e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "354848bd0ce59c0942ac4667d970e4c1c9650c275607550af4b311317e0b22e6"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
