class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.548.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ca80e3b407ef20cdc66049087213b25a645d61e68e674a90c747fb0b1c454ee9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c159e13e438a8af9a43b14136726aeae619f68a56c3aa83207ad3d89d04b7a71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e7f4bd1d5192847edea8c18c29c317d7ff5e8f4cc87b44b84ceec70759d238a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8023971759f5ecde4a431e692b1e0fb90f24fcdb3a69cf8bda7eec527abb6070"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
