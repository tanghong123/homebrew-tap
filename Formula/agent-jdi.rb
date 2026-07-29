class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4a5adb5782f3345d1c1d096ca322081e6693c8433fe24e10516a47b78377c78f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "57979ad0ec0a6b57fe462eed01ab9610785bef6be2514247e94af7f9cefb533f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54fe148d4f1cf1b5d615fc93ffdd44a332874ced872351c9a4b5cda83d9f2b62"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b151c14b9e852dffa5bc9008e4223da0af6dd9c421688e15768d9c017ef7719c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
