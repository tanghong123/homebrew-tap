class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.108.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "229dab143539399af95e33a41502eb30008c5bb2dba2c160b61570566530be71"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8e3e1908bb96298becb9f19f636e7ab0c058d1e4fbfbd24c5b958022a2f40f4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "17ed7791c412aed376620ae8fa1476c5fd94304e1deddf5b75040de1bb8d18f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2c561172f69f3c8711f9846fd31c393fc955553049259a81c92d964200d55d28"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
