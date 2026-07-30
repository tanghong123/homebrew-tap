class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.15.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "286e13fc4db7d577a724d72d11d38b4fb27a8cef3cbf2f14e4cf477768793404"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "10ba43d77759af55452a51601fc3e3cafd77f6a02f5d5056de95035cdc4ca296"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ffcf14c17ceca490c10bbe931491758159baf60ccb94763005d62f6d4a1e6407"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c168dc369e199bac484b6bdf0ec29b0f0a47d2049523cbebde20f3ca1cd8907"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
