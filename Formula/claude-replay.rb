class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "719a9ed0fac2d0fb28c58f9d33e92aba5aa3bf5332a60b682449a2be1a55ab1a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0dfdc9d39f0aa88466002d53c0a411519f9ca73688fba3ed8777f2e46a38bbd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6f9e614bc6657ca5eb424e1fbaaac954a14ee98bbf10a7f4a7d06100ec99444"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2585d13721fd11ae381c5911acca44009c72e629c0d1bfa73572d43816a57f42"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
