class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.261.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ecb5c52eef47d9657205aa39daf214d3f5a02aafb400ff28899698d8416cb771"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "da06e18d60b76c53dfde3927b352a5c417a98de76834291d02827323fde5f66a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d046a8cba11ba276022ffa437e10c5e1a0e54dae3b33f747f846c640675f589c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.261.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9e5ba944c36c3d5f859237faa16ae923c7c9f41ac7d6fa28868b2a18e4d4f42"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
