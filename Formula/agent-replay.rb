class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.374.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "612b5cccef3359969140e496f57763d3b1137d3f7a096711a314ec74188d07be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5b41527c0089b16355ffe4bc8a14b273bdf057774b421dee498c4507ff083fbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be2729b9f600bb0e2303a3189eab0228baab6257dcc7c7c5c7c89d7f3bc2df1a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c8317fc92cfa8c639f126801f903d626019cf2ff6731ea5844ea727962441ff6"
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
