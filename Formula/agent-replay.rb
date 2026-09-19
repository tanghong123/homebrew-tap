class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.279.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "945ee7f5c43069e04bb1a198d5eb042c4bf940e4df015d89c55c50420f2673f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8f022c615ec3b3590442b872cde004d053aba294ff943f4cd00a6f047869e7f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "97f8bca156fcf6c6a2d0fcf32d3bb9514feac9941923ee430f84fcf5e4b160d4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d46a2aae6c5c3b242be5845cfe562b4105a8c14b5fa1058298e2afb70cee3894"
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
