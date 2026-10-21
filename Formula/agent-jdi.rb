class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.400.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0d0febea23ce0343cfa3e8efec12800bbc07b6cd9d254356c81a6f0bf37daf99"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9130b4987ddcdee9162509313791df11b60b5e2b3c11fc7ea13b327e9b689bc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce86e52d8b23421dba0e79e2deb8b6364d41cfc278bd6863f4b2df4bf055796b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "383096f32badd6b9e71a7b40a3022ea38b9724998ed3b8da71068a0175a7abaa"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
