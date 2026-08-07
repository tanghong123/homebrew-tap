class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.49.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "264a2b6287437394ad4deee4fb5619ccef63d4f41a1f4006503d3615bac50953"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "56246ba03742e46a2858aad80374062e642b07fd320613d3e804752f516dae11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c39211dcb4e2960ff3fe25f84e241b6ebbd5a09bdc27fb0cd6eeccf484fd6456"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc97b81e3760a21fc7b3f2448650a55d33cf71ab82d614eb397f5706c465b7a9"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
