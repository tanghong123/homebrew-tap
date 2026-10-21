class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.399.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7184c28a94ddf74a222fbef8b45d037a4a10f8ce007f83e8fd1c5c93479b0dfa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8cd6b3ff374481b6454565a8ff5ad3a5d4617a213f5535e391f777abfaed6c56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3015156ea935628dbf89b4dcfa10704c894d7f77c40396adc249e0549d3a136"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9df37dd907fa736e48f1873bb01e3fb7c6d662bcd8b790ef05c002fa80fd2cfb"
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
