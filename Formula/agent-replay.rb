class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.252.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "564566e6cd2c4548d7eda1b868e8a87f520b7ecfb4022bda6a3a1c796d5629aa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7264a0b746a8b202d50ab950cf0cdcff112aab9f1b92a9b531b5a30151957705"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce8d76eff9f64daf84425f887d51cc8882d37a5880bb68b498da323533b61513"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a1f8cccb12371ebd98ddbebd253b765ace0eb6dc66f4ac295f8f6beef1d40a5"
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
