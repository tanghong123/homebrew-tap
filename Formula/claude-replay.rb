class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.42.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "445b58dd2c5d98a80e767777857e0220cf799af0714b3279a9f5e0634d0b337b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d16892d20bbcbbca42c9db0f2b13623ca61adb227dc4650bf62da4281442e5b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98073f35b9a88a228094b7718f249b6c6ab322c92301dec978f76d1f961e68dc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20368bfdca658018d7f840ae9a39d3b80863c8a10efcd250be6efdde0229b53a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
