class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.406.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8e73f5f422f1b835a5ce4be77ec7a9be46245bd0c66667d2af119b9201cef458"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "688bb94081c3c271161cb4cbd67e86a40aa8896ef88a274f6edb0702a9c10fe6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4ad8b1f321a96363a900d84510c3747301ad0f23d16fdcd07ccfd3c97cc24bdb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "38f852adafd8097e9943d78b438b58e2dc96b8ffac0769c16f06325fb509bb01"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
