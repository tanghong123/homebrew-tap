class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.49.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4fceb956fa2cf1a3032ba557f08e4888a21a8b9241dd8eb6d7f4aacf0b3b3d9d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4f31f40b474886d49283cc09a3f27f6aa7feafe4aa3ad25679318b75e47c256c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9203f5989a89c62ed3d48d2eae473b227138c1bf36c55bd548d40136524be444"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39b3f42891e7f935c584b06513b229543ab3f585e0dec3979273b8f243fafdf2"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
