class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.550.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "70b2138564e591ae983a5325cdcb8f782cd81d951d03a0a2127c2503bcc3f0e8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d86598940bd1a71db753d38eaf30c0f220ad6b83003451d6245ccdd41efecbcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c783e33897ec1f727b2dcb5bca0614ca72485dbdd05c1362f62c05cdc8e7cf6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e3c9ddf9e17500421663e721eaab6f1a2c52626d8128c5c8feaebfaf2940dc59"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
