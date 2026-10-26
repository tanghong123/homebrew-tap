class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.427.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d8303123d435a68553a156eb656e9544bb77e92832e0b755270c688a947271ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d1a905ca4a3d0d5fe67558c0530ce2819d495f9c0cd7f372387b5350ce495c16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "30994e35dc9c90d62cc19badd642c68d6adc33f94a99eeab59f5aa7641025b23"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "653d157980fa466679a321e3bbc214554b606b2a81b3eb4acd1b0ff912824eb1"
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
