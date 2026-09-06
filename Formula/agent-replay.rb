class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.216.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "60c0801e25450597c08bb050293e795dd2e2c2ee778628cdcca709a44d6fb877"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1a788e7e24e5d21b0a27c50c9c3b8d6733000f0bbfdc4145ea314125068aed5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "620366695cb2c9880c2cc5e6377b5917f611bdf4573802d42ad43a888eb3c5a2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31514389c2b2fc67880973e2b78c0fa98f2f0a7f48b9feebc174dce088599c39"
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
