class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.165.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "af439b27c0dc8a6125b3ecab255a960fcbe38cf605471723f8b77ed7937b0d7a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a87918bb5306a6f834746522ed50727aa18a5ed6d22c49c7c97a004e2949ab40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e2cb18549bba1a1e100577239476972ad65188c1dab43a9fa29108ee3e27388"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.165.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1fb84053182d312b6f8d9c4bbec605719eec4cca397b985393ee5deafc3c2e2b"
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
