class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.27.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.27.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4a6deac92215e85f81d430fcb37991150d56611f8fd6fc5b9fb06df0aca80c60"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.27.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "127f06bfbc4da173a281e94a9b5da00fbe0503493449ea2abd0ae9242f5474fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.27.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00edf9194ae8549fa5d1cd83084772b8aa6d8a0597195fd7b169dc6f8bc2c130"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.27.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7663702906854bc3ec2ae1c71456feb8edfc25fd270bcbfcbc024443deab36f5"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
