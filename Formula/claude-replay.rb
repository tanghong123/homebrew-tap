class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.32.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d151333db4685392e991f21ea9f2ffa033831549a3b2df7d01c39712ae61ed35"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c8f3bc52ad27ccab8c50b355805589b1ef0e5ba16269a8aaa4bc3e0e7aef9b4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "25e461864dfd6d82e79979c3970fce14a90ce66f4defd7befc5dcef7528cfd11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ebfa176c889a08c06ca75205d04d91d806935c38b1d848a85e999830ee8ed1b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
