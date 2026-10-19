class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.392.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c8833a4dac1901e15b291556543fb95e4eacd951586627bff6c219b3903f60b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1ba81fbb374c0b05ecedddd51e737b7a8c9c77c5a4084336bc2f3a51315d86e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b535c82bc40912b512ddde2b5723ef061c22a2405f951983a77584e2bd170a4d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d5d8bb138aa15e12c5c002c3a3217a79d9c8c7872d8ffc1a459ba7413e6eec29"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
