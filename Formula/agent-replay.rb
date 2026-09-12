class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.258.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e76b4e87d7648eac710f6f8f46631e3d22f7de3e4836458a0e5b250c23812e8e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d0ff5530684d48a158b44fc18a1b2cf524200c45cffad7eb4e6ccc62f105e2e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "85e16c2d37692ac8573af94b3968301cf5d0957760a4a341aa57b7f6bafbe4ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "724779a7ed2ce4ec2d492b34ac781ec679ac8df7ee98a850696b67dce5a4df55"
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
