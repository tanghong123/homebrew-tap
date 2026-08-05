class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.37.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "944a98b6b8d7a84ebe098c3657ecb946e1359af228aa63785768de5dd48485f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f1be4ba275018c57c9f192566ba3bc41f5bad00c4846bb562c56263b3aade4e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b813a93572f3b9187c1e534c0aff4859b6087b4f5648306160e055347b8be16"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4de9f657b20fe710579518fb385bb3ea668234954f703adc4a05d929827357de"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
