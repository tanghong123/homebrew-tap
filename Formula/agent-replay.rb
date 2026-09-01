class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.128.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b4270cce9b0bf5509ba405147914b45169e2fbe82bf54eeaf3a1e7f15006381c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "daf01d00ba5fe7db98833d5f5f09007e5ab57d4fafb32d677fd3668d798c9298"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9cc1c784038602455cc09bbdf395e9b5e5a9184c43bf96e47a7ce85f63278002"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ee3141320697272020f4e172fa9be22a66c5acb39a22dabbae0b66b28a085b5d"
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
