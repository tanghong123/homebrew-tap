class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.194.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "46825ace354fa04e78d60ba96aa99793bf7d82c3bb191ad667ac79a8d61c9e74"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "09964d88059d3ad51b3ee527ca244e27040aa6e44db7ca9a5ee19641f65f6ff6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6e9dfd0476c7c8390a2700ef142d8d89f574b0a501e1f83e28c938a0ac49109"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39b202d9a13ff5e9a21a68399d2a2d272f7d9aae05f7eea5c80671047071d532"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
