class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.52.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fef64854edcfbbea0e116cc419c531d34d0d4ee5e081423d9ba44f5a141f0730"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "97cfaf732ad0b27e76d57d7c3e59c891f52b7fec6b364a8ddd0d1a4fe387c273"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2b43d60afc13201317cf0e5ecd755cd523a72c77953bffa8df666b9e7ebdfa96"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "51aedd549acdd4f5c742baa438158bf4755fc30de00160f0062359957cbb838f"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
