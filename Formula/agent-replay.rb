class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.510.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d8d046091f6a7bbdc38acbd87d7b414e64fe065dd83b547ea7e1e546cd196d77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "eb8d04f5fb39e5453d29d8e39fff12b566b9611b9f1c0cc2367365fc1984405b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "19051aad5f900173d8c77dd7172c7d3cbf86040c7c0206a70170813488be6e9d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e95757c1c45cb6f283c38ff2ccd4688e8ae48a1e4641eaa6c6f77d1a0980a21f"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
