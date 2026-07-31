class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.24.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.24.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bf14974fa4a6bbe4a0c44fdf67d6df4a0ece686c80d1af9b634c148dae01f6b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.24.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0b19326f22a4e4940eb2e836b5aaa04ba0744b5a61ba99258eeb2e2cbbfb6bbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.24.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4b3998d88f969b07ff2d03634a9d1bd016a0a3203dde3fe55f847fea79b4ecb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.24.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9258f9469e84b935381d47b5247bdc34baf7c8dfd9be9e29e096a0ad9843ce7e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
