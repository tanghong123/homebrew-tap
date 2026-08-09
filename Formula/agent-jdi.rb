class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d5592f4a1032662ff984a093df2ceee8ce545cd152be5b5326c4d3a1a137cdfb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "644e6b9d3f8035bc8228b593c9670fcc7b0ceea4d884b89d12502e3335119d75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d246181bc83651f41f4067de87b2b81a5b9641256bbfd4a0d9186127a07b857"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6095c37a30735e7f540a8247b4a01ea28f2521be500dfadf20f131016ee609fe"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
