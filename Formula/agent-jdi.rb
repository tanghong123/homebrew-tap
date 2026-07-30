class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.20.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "31f7000406b3cf0d4322e620177c47e096397950cc30b6f68c8a95557605f5a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7ca41f108ced778a87c42bc58a8e94bc89060b9024764e07f5369ea86f2caa20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "44fe0bb068f66c7ee318d15e01f0043ad8e839e48136a56023f1ad8b5c26caf3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "305c102c9f62f40b61a498071a2b542b7963f18e799c27ce2a4c00f881a90957"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
