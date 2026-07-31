class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.23.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "131a9b9093c3339e1ada1a4544ef02e1acf134b4a17e8958bb2f7ec94a5167b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a94c6b019e0b448a95b4ca7046edd0a73c5f7f59ea9a8ca30e7aaf71dd96ae64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d87d7c646bba1ea6371a4634ad6c42fce08f823575aec0ada393617fe56e5414"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb530645853cce062e271e8db8ae624c7e4df91031fbf726bdff99fa414182e3"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
