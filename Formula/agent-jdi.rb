class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.153.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1f3fe096abad63a12f3f9a4252a23bf4cf6e4f11b5b2ad5bc4f8fce8d5124bc0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a7f4b2a19a6b3c2f9f63889091cb33a55e06951e81ee1284997d34b28440454d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d7d0728abef2f716f6e2771177efb26909d56f4d495241f6a4869c912f8a920"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74423a07fb96237e6027159acf7b91f15bfcbb473b4f1edf86ff392fb3714fd5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
