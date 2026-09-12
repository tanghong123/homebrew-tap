class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.263.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "44be0d92d2e33c42fd81b93b9158e7bf98832f8aafefe1361ba8d087c122af75"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3b28f0baa87879f2c789921ee585408a2c8488de0b5eb4231e5377ecdfc2d155"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bc2eda2c9c0352be1c47017bb4d5286af6fe5147c498165db42a20949398aaed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f434614ee4b197d0c254997258dc404a3c03b8cd3c4b066405fe954a1a93e425"
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
