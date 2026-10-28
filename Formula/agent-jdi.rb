class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.441.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d4707ba690e33be3416bcda0f4d1fbf2cac9f0f2e160398e0e7b8e1efa11b9f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4fc243318d5329f558fe0a5f1affe5d5b0722316771a2331a13147a50fcd3bb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "33c0ae7c7c4c9502194f6d6bb771d8b4253f39c85b2026eb658c7a27d23978bb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fed3ddd3b18b559daef7a3414cac7cb35994e5d7f91c8eac6ee63b51251cb9a7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
