class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "edc005b80948b9b3a53cfb8bf1d350bf3c9c87539c69aa530c3d64ce62e73d28"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d9f060ab8288d5b441eb7ea0a41d6e860b0d9f2a1fddde7ec78d021c90092a9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "74443aaf116c30b09a1a7b6d0d970dddf13ba8924b6714052ecdfe04269428eb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5bf7a8e494018f966d13689b187e1a5643b255df39683e65b965990fd06bc91a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
