class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.30.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0cb5d12e7e2ea3d69596cab501eefd2b1e2b45f92862fa3daaeff76e9b07c523"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "39856aeb58b76c085ff6cfd9138b13609a3342c2f8e46bec21e1fc1935114f82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc75d75bfd955d05aeb0809fdf2b20782417fbc056720c0435aef42b9dd5d3f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e4d5b14978661fb02ed8aff80d65eee53e200b22f8275eb5ea9858c76673f200"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
