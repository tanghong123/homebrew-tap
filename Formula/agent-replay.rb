class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.462.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2e50ca3347c1813e257f96fa17672e97965a6fe2f57b70235c95a5c70eab1bce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d82d687c73fd1b1e58a12f9a1c1e2c32323d1812060a4fb7d384674b772b3d96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b99fe64eef0e542762b8942d79aa9e6b69764596d54626be1bd016ff4fc2d79b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ef46f49d9c771a0e6360487d52c22516d331d60c237397496b0a6aae033c8fa8"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
