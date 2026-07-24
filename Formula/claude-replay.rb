class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.24.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.24.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "eeeb5859c6a382ff104c3ef874461f4b2cff9f835e940db2b5c776ee0835dbfb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.24.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d3012b04862058b17dcade6aa9e58931e3f6331055398859bea528a990a1e65b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.24.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d9c871f2db7d75eac6293df7acb797e1bb679bc0fb12ef35b289b14323ff41c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.24.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76d7a7df2f2daf7081237c6004304632b2cd41b8df65a4951933312a238adc62"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
