class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.198.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "18daea66bf509ad1d02923513199162bc4c508f4b07b75500e6918bee8b83472"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0d7f9aeb209cb6f9b3e42b31ef89c4fe73ba24525bf2c91d30f93049a0f6ec2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e265b296355d1839130dcb802104903d576bc076f9117f85fa6c80475baa5d9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d79d0798ebf1f2f1ed63fda8671db5dc3abee4f8fdd3aad60217c0d74a3283d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
