class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.34.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.34.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a10f4bf29d1f7528b034fcef52385155adb03bc461333b40b427d79b9f9c33c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.34.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "26cf3c95fa39c7f423e0377f9f86aea189e00ebf6f5a6dc42916652eecd17b6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.34.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fd469b16a536496cef61e801881978df06d731c2e6bba920e818ccfc941d96d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.34.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a03d49cbae7534cc2bb122591a5ea1e262654724ef4fdf4f50568129c5f8f7c5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
