class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.436.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "217f6e2ffda5c28fbe4f544a1df92efbdee7d3bd14f6ac4bb43cd8ddc6d14545"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "13fb25f729287d7e9f409b37ed03e31cc92c466fd73e57136625a4172ddff7f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cb499f82801038a0f70436c2dcd5f7f1087067a59d3404f096bb94707c370122"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7970d20d2a85ace8c08765ba52a3e99f4db586e9d9db300dd3b8be7de8c6ec98"
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
