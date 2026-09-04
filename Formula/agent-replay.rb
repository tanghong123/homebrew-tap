class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.164.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "54933344d985d6fbaa5eef2218c89c3328d91713c7572c6d9b10dd1d9aa9b33d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "186f03f72dd936ba83549c3dfd2778262f65f3111f0c3bc51f984f7a67129ba1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ff90c8fa6c1d19cfd412e2282c4fb7bf94edcbd76e7cc711aec45b58b88d7bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8274ddd934a864269ac4c9fcec1b389717e7948c9af32d63c556e245426fb13a"
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
