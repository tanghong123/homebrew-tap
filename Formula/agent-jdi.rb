class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.177.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f75739992b80b98e893b340b03346b1b0d433256404530240b38857454152db2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "bce4c3ba28ec757f5add745810e8f19283343a26578a6dc606990ff213f53a30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2eb79fffc44b661ced5934a3231828483eea16c39992303d25844d58ea27051f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "735974a4ea66978ce6e3e2b075febb95e29c2dab412b49ac57e9ca09a7c2482f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
