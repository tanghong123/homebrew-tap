class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "10406cd0118c01ea394a5afb8a1c62295ae641c96c1720025f2cd4e8834129a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4f05fb1ef64f9e5c2bc5130cfcf8527900d28caa5d6b825fc4814f4482b570a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "47f4e87503385f64fe2a42a2cd4afcdaef2e21f8f2de5e61750255ffdd73a1dc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da9cd9b34750726b53870618d78b1d00969868a0606d615041deb837aee4dcb8"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
