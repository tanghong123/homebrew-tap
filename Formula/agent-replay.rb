class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.345.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4e6f8b600b375b82f7d44507106ff7be69af896cf61835126ed274356b5a633a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "98ada5a8f1c6caf70f357760e9776a3cbe97a8b10b7c46ba67afd36422e3d4eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eeb203dc2bfdb5a2e800743b3f6411c5a98c6d8186496d6d4397b45214c9b856"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "292d97955eb8e7ce676c974e0e4f1f2127f5a8a58af88e6a4b27802ec49970f7"
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
