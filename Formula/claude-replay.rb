class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.75.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f2ec0ec9283a0e0fa8b63d452feb6fab8acb7c2b880e979bf08fe9b6c3c48278"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d6e1e32ce10c0aca2c12af59fd31521877d3e2b1dc17dafa4a0ad2c2056b74c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "664057cb1638d8b3e66a3e42432093f238659082c6b9fab31bd06035950cfbb3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ed023a5c56ea22ef34ef2e1e33e11d6a74ad40894b79c3a0c444c4f3d7e404b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
