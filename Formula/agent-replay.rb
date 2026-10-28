class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.438.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0fd4a8feb3872fe92811b2f1163d8dae449dfc9e6da2b5ddce46b2a64d0bdcae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4d08581c40e3f34e7aa6f77e698a5f2d7577daaf9fdc5fcea8599009dbe66b43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8b72a983be22833a9097cc542de3869416c6e269c83aae68ae6749bbc44e9242"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "655d7f15c2070c6e84dd5fe7465e52a78d79604d22e912cb3b08e4aa03e0a266"
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
