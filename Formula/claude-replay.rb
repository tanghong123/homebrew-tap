class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "26fedb43f7c0ae14afcfeea858692311cca8ce8e351be9fe4eb89380c15e9307"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "db800f4bc39db3922eb0d8b4483d6462ea753e7d4d79c339843f3557bb6bd07d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9e2af4edea30858ce304338b5da171481543b1a88db710ed58bd1d09961822c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "80ca482ae7d5e128083a2aa28b7f6e04b3762a51e5cdcec7670d832249061c39"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
