class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9f5228bee2ef4a1a4f9cf3ce7c6896a920717ed8d8cf67d3a9120e3fca91b9fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "fd6784bf1c0108a392e28bd992df3db5b167d245d3c9404272d74ad43c4cd76b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "233d82dc48e5ac04d7f921bdf0d904d2226ec6d589809319514f0f17423ad2ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f889891d888c7232b752a05c8e67f0ff38ae123d8bb4f937b559ce136a3da575"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
