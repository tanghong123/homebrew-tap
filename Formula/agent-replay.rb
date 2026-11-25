class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.567.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "33b72ef106f20e2dd1e208ecfea23d4a7be8c263d517b06f28fe9198257b6a4a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0b182df940b10d59a72d8aa907dab34393e637551f111b9eba87f574ad886053"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fdce36dd220f2e935babfa5ed0088c7c3e34f6765cedaa71edad6e3707765bdb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50caba69a6114ebc3193882f10c3be33b58fd4b53f8e04ffc24477de8792b090"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
