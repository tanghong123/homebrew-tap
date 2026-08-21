class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.98.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d7d9c474846a2d6053fad100d715580d909b90a661f4bce34177e155c6cd6fbc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "52d575030009da0a6b364cf8cd295fb79bbfb141e3aebef80f2b1a57ca0fde4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0375a2bf992e7f8164a2304c9da05f1ea6c4efe3bea432ef218350f16290face"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8b6e3475f7aa183c52421660222201564f6ce0b5f6fb38352575b6d4be23ab3"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
