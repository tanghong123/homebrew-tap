class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.3.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.3/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cc7cebb6edaeb824e308e0c1e863c14d0427a2b56262091d30ef0fbde4b0ee15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.3/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8d073d46ce7bf6ff736d486a297425dce6bfea48e03e0ec76c5da93757e0c6ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.3/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7486fcb4349ec1bd1c5fe324bad2cc8f4222f109e58ee18d05c3d878f69291cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.3/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36f751fc2c1d1cca7f7113f2239c5e7a02e74e3d5f5328b775acd926a1ae6168"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
