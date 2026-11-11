class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.509.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "386d504d95563f682a37d0c77cef1208e42dd99be1498d065ff5a7f9ca922c53"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4adc4aaf3dfd345fbf15ad21bc6a63ff42ad7d582f11de914b9a387ebd813a24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eceab42459272384869611b753602a6f5a054feb7bccd3a84b71d1c8652eb523"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "96ca75da318d54d10bb5844a2192ec07a4aad475e707b5f054bf6c72e89fd0bc"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
