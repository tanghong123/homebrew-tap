class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.36.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.36.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5d3daa9cf4e6ef2cac3aa2d6031c9fbda0aa6e5105ad527c42e7b51538b2bd25"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.36.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ccf7250c00a8f3a82cb92c04a77aafc616da5cb3f7b8ef0f5442a2429e9e025b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.36.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a11d78b523107db38e366376deff64025ac78538a3bacc298ed704357c89dc0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.36.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "096eb61212313a6045f49e779e667cc27a850ef4b4abd656c5c0d257777e8d69"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
