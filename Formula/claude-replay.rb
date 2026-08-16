class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.83.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "feed8f4728e84ae7db9c625ed09475cabecf676edc1cec1acdb66524a48cd164"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d47e89c785f56f3d8491b5a1c8600b1dce727bc7c773e897feb2b5705c989991"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6daec88aecc257895dbb0b878222dab0408628c9219b893c20847500fa48c49b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.83.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85ce807983a1d7dc6a56b9900b5582089de5c7dae3e0b4a053322406e86bc627"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
