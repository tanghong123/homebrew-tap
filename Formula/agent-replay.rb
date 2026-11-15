class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.522.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "79499421e61896b3ae72f3e2db1712101c8fc0319989b8cde9849f39fd6ebc07"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fe32e1f81acdf97fbdfa498f95e8d475f11c922a61152b86c79d265803b13b2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ac5aac92d060987903593f44a0a2897a729c022667a832a26229d16db3af945"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61118a307148cc2280a0ce058d8b077e3b1066d69a80f6e7474e85e375b01f17"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
