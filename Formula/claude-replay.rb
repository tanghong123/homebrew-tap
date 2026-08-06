class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.42.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c7715d0a3a04ae113d44155b8497b7afa5ad21e8ec4eb54917210664f95c4cce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2ff1a949074f722862b95270f64824b1b09670c3433960f73cf36f424fd3e805"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "02b35ea45d81c364013b890eb8cd9abaf3e57dbc0803dc5c66190d921cac73d1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.42.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31845d29ce75ae6c652abc70cbb6186cf2499cf54cc7fad78b91584775b0c4b4"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
