class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.293.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4ad0a1034baf61601607f0078fcd2a084fdd33f7eed825c8c32406ac8f6a823d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "710d2ba80b89139c9edc82ded8c34b45768cc1552a3e237846ed9db44467f76e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a1f359654f53aa10ecae014c26d5de1ae785e7fef99b524164c06e60a0db7b4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fcbf706c9d4d01915c0b33bd08fd2d3aae6305741bb6567d1e7fc96bf07b96e1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
