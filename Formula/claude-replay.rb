class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.53.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "de96766433ddbe72ec0076edd5adf2630aeeaed29eed83ee753f5426e2eede05"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1b7be4fcbb7bdbb815acf1cff10d9a04417001741883dd79643cb0cbcc0dcd86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6be029c33b8b4888b9b11f02498b41c028ab0a3407f57e2466ab2b9e0f42a123"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7cf569bbd3f6ce7d0f7897c3d1b6af915b11b54e5e1a79ec2922d3535c1b9b93"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
