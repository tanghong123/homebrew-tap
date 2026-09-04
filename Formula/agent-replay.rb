class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.174.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9851758d02639ba8204f9615c8663529a0e57780d3dc6b7a758e8d1e462a5b36"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f2581be2785b550e07c81e408c2373505076e006ac90b9fc02e06b3571b1be9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ee170f47ba658d12a9e668091b05759a2d264899bb02735171b39b7eb3ede78"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f7985acf13635a8241e2447490fe0fa1121aae98cfd749cc1ae4cf6f39b3db1"
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
