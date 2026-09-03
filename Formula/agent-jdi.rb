class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.143.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8e97c8f87667166c7ae669f8fe133595d3c454db1fa830ff2de1392e6d319b0f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "aa90e5389168b1dc8eceef834bc5ddb76ca9954567d7220e077eb74d81d3b6be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "879044af0eb108ee9fb4b8625938523caea2ec64566ac216e63f8ded57abd7a7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3fad897dfad2a96060307768ea092e75dbcd469276def2634aa15e0613ecdfd3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
