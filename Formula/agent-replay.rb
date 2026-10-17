class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.384.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "89f7bcebf291d5e28898a76a35a46d537d76df67412ceb045dfe55414e2df98a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "31ba0597260e4ba02b8f2a35279f992b8a108bfc9de5e0a815fbb073158b318b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b1e7d1fd7d753a68671f35aca4547548d759c3d5a5bcfa495b92a3a2ff941a9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a2f24e79e87c4e653496dd9931d0afb5ee2f2fcc33f3dd4062f24c2e8d58c87a"
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
