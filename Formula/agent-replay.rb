class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.391.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "719ee45e513ac1b0eabebd7e29a3b685d195b1c0124719048e4072f4dc25905b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "95ef231999daff03dc39cd21267bba299ab22bb2e0012b3ac5722e300fb958da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "784131872e6001a02ebe7a91fe18884334d4752adfb8b3c643ae0c25821c8175"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6d17adfd063aef47da5b0c668f3c4c5cdfae8c8e74f596c6bd1423bfacb2bc96"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
