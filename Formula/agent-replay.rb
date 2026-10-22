class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.404.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2101b2f1591fad9f5c8b2c554a9879d7ed987d0a5471f9bc7fbd4c2d68525e38"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4c27fd47cc44cf0cd46ced624548d8d56b6319995911800181e66bb2fd264545"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "17705220371495c601b2d78abb8d09fe2a082c629b620e7cd22d5e47e66ca577"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8446df19d0f8d41b2e4158b37e7f16c2f643a1b70ed290a4a2d91de923a8a29c"
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
