class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.126.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2c3cca8cade662b2f5219819f045b48fdd51249ceb2ccfcb537e558918017518"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "22634b57e368218579d5483773450982c905a910f0debf6a318f21570a82c3af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50545c39e52b3dfbd0c97766863ad65ddfc105a3a35854dd24a5c6ee78ae4a31"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0faf6cfc92d680c7500cf6da0f316cdacba59b66e1e0f8780b88e0e7db5101d7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
