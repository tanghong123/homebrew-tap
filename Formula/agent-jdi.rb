class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.145.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ad5b9d2ae7431eb57cfd00d7ce7565ccc00f8ac2900799fdb55557b2b43e00f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c63a132a6ce64dd535c3d1d50f8ecf875ce75511bf27d4fd6748e4272aba0ea9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6d9bdd6801e5e6104133f82e7fff02da5494144e9af50770160ff5bf008ba9b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.145.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf6fe373c35d0af9fc3893c4c69698fdff66bf688fb5fae9ce1996bd79300600"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
