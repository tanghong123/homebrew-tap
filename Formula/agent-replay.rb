class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.203.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d13706a554dfa291bc67da79acb221ba6b644f17bffa7758c398c72cc6e594e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "35c6e9e6cd6dc6884ee7ca3e401eb22977d04d773a804e706f94d3bc69ccb98f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "60af1d900fde9aa1d6f2e7f648b821844e3bf17904f0b177504b571996205ed8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.203.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "def606f5eaf072cf0700652d053e0dd9908dede9cf4f3983a2590d94ff930fca"
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
