class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.281.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9fa32a0ae66d00be882e5089a93cec8f2e6c1191288534097c09c2721f7c75df"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2e9ddcf4f7ca10be3ad9a6329289da566153aab0ea92530acee2c57d608ff7a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "140235f8274777305007231d54ed3481c1773868a88f214b75644be281a1ff9b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6fb6b977cd095f02d08742c26c282cd06088f85c79b0c8dcedd6f5688f25d9be"
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
