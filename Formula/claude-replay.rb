class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.60.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ed2f90beee83d49566d48442eabde48c39b2cd5dc08e955be0a0222c8355ae5a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "043378696bbb4b749309279c9c209d9ee67f890066c1a2765fc37c24074d719f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54cd9c59c6d25b9a2345cfb832d6a3c3e8467d34d9d3c41dee5248c73c060796"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b85c1beb0539134a71a2d90a7f9657380a3b59b28637e254170e519a27bb786b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
