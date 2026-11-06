class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.482.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3134054cf9af879cb4e79d643a3c048627fbc87e24a6620786b710be16ac8dff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ba09e2891dd94834fb6bce46ace7f725121320d088bfbc9b32742a8e9483a5ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e4366aaac66c03dd563c8a999b473108908eebc68173f63fc4dedde0983dc090"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "52ff2e1f824fc0035e3c6c5992ad1ae34c4aa64c70a4732387dfaae7528a3381"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
