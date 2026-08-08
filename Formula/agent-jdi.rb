class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.8"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5df77d3dec06f612282275e74d15967780191ed8dcf157ad3cdf3ad476881dcf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ea375fa87c8e1341ba7c69f7dcc36d36cf871c6030eec905e2e86cd8eee8d66f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e18f3850492a73efc7f2407b75fe2a004d8681f88296d1f8487742a55516552"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "672c6b0f0db72219a7c3088bb2aa66e248da38b67ea9011952938861673b423f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
