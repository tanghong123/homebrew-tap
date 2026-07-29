class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.8.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.8.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2c2280c75ab22f45880ef21c1008c1ac2ac017aba2e61565425c0da7cd2af2e8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.8.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1f68047fb02e35ce96466529ad50417106b3d9b241902845ed4f58112af50555"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.8.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d053f661a2f783fb16d9ad5734e23240dd77e118b956fe2002e53246186ef9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.8.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "84cba50ea5c90e4a33c1fb242562d4e2f3c367a4d8d330992e0ca0a7cb48e162"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
