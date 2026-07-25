class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.26.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.26.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b0ec2e72c8a03d740f4a9906de78918859d01c19ab393ddd879cf1694208c409"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.26.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0be9f8265a284d7338726936eb0b616c1be32d4a13a31e90b208914e9a2baee1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.26.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "969723dc623dc48fd228528650ff103b3589fc857c7b3f90eeb0de50fe655ac3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.26.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3b58cdba64964b138560bd82af7c275f9a20af1e9fc15870f2afd312f3a3f293"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
