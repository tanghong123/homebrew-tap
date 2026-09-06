class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.209.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f743f20343148f8de45150638faa486ec139f963ecd5d14646d28c539931a0e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2593dc956724309299c3a367026f65f4c3d2b5851625c90f04ac90d9e952187f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bfd3b14a327113b8f7dda10fddef86699fda1eceb73db0f223d4ab1f8ee8b450"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "056254b191d8dddc397ebe8f5eaa11a78b48148236526ea9c9f315de33fdc281"
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
