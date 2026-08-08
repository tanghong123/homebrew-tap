class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.55.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0a41199c654139e97a719ab1ec2c0d30c654b03aa2b9c30306623fc9c527b320"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cf6b58f20365a0ab24929209576e2147769b2e5700c336d8308043e0bbefde1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "668d78c68d22c70b8d5635dae4f8c4f9b2899393739f7057cfe664799e40b9c9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.55.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bd64f5958d4b147c8ecc895db762df241130b91eed63dd1bcb8d815e9e33e59a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
