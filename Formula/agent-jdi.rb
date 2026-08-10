class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.61.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9c08ef5c63a0d8a3a8bec608fcb6bc9817e3508a3f9485f5c41b0ba6339b890e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f40767eab72bcdeef080ae7ff5a50e016561ba1bbf5d2b5b3d296f6847f79c4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "526cce782e0d7eda39d8fb94c670286c008c27ad6da5c488bdbb17bd8064268b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "38f4da0fb4d8e1a10435297ac150c9954a2e21dc443e250a5ea13ebe8594892d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
