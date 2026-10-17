class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.384.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "767f031010612f14343542cdee2eb7fb07ae8ba42139b7439488625a94d43010"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b0b4e57e36194698ec404f21760ef5301d5ca3f3f4f67e422abc47deb4e63b58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f47cbb4b0f4abc40b2c418873bb868aa6f9e48113045064157ddc05b7557a70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50ff63d280392ec5d52b3a324735fe72fc7c4e33cce90c201268f6afb715c3e2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
