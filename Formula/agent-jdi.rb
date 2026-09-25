class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.304.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cce10c2d128c552bd194aeab318b4aea6e4d8f9b7b8a9264368d4b27263a1a5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "111c2c794320ccb056e95bc25706337422ce6660395ced3b5675ce89f6359101"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1795b5b22308c6419352563fd6956a1ee676766ee56d02132270ca1b8b5219f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e0ac9758cf63bffbc68d409999f46556481db79ab5f6b825b25a07212bd84bd7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
