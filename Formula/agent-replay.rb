class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.152.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b19c9d1ba4d90dc2d15183cb8d7e01ce32fcdaa640855e167af4ee76dde3ab20"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9d95241f53535106cf1ae625f3f315bb819d1c73d2d13803df7967c1f5eb4869"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a88ae6d896a7b5aee8291ef64bf5114db02572923edc2fbf8ea13f41e8145c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da1fa29220243e9ae33a3414a5a239b9bc3d2c7e2edc5761c6427c05b634f3d0"
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
