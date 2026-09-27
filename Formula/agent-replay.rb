class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.315.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "46a4a61daca2f35ebd5e97a696878ec1e5f8b39c9c2acfb2506e482109101c6c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6cac0faac40ef3c94370200f3ad85242ad44621a99cf1f9e45c9d29f6b3d423e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2b531ac7ad5d6d4341b8fdb4ac7d02361bad460fbbbf165418882eef8af2020c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c90615feed207c04895bb3cd20de99989fd625a8fcf621bd391b97ad998a05f"
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
