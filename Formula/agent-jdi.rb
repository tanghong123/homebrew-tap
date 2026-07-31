class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.25.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "29bbbf50b7affd05a1eccd81211a19ac57ebf661b56b34194a76c90d132e9fbd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e37d27e2cf7ef41a934b2ac3a42053f0b2cb039ac401cc46c1a89b256ec74c6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4fc1c8948d321a8151971188f7bd1800ce475e94297e9f450b64b100bc42a39"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7c2efc8e048951af9a40ed640a4d759fa85fdd780a29e63986fef9cd946b20b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
