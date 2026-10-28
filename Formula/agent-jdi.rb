class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.437.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e03da60cfeb338e5d5e3f9a1939a482b8badeebb59f013c7d4b91876c8ea4fcb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d2ffae7291708731262e0cf80c76dc6ccca5956fb0939deb2661d9984c3e090e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7918795e16db69e5af6779d7dbc4c16ab4cc6d240b5493757deac67631b3ebf5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c2c072379ee5428b7a10acbe1c863b19bd385322cbf739aad228385d9e66b15d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
