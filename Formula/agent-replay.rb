class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.477.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1d24d2a91dda57a9c88decc1be58bfd289529f367819c5c2eaf032e372e92bd9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "39deae8b80624818ee1e5b8a2c747ab4114fb58a17df1aa0bc03e6f02c66ce41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df86fc7a0e1bb5bc23d403d4de3360b257c09d096a7fc326d7367e3f059b4625"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2dfb3a385d35ac69c3c589845bb6e916a719ee4f5ea5fda7e05e192435ba1768"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
