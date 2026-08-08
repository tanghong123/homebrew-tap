class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ce243deb12421672c663109c300c016291832b3f47b7b45307d304e4499b348c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c08def8f0528282c9dd46e117538da0885e7584e523152d7f0fa3a18610c8b6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0a398f2f36b18bb244cdbb79953f6ad09c237a7d37765469c5cdf9899767a409"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.5/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0390f5cbaba263b0ec251d34ce5db4e5e98bfa2fc409245deac2d91ed2a8039d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
