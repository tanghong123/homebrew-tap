class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.12.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5d236d5b56ee293b4d0dc662541f847df899b501280b2927d4c5ed82745a5e34"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bc7fdb1380657d0add13a37f58006fc70d0ac2dc194c2cb2f9b35dd14e9c7a32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bac8db50559296f71faf41e7d61788db887a4f855532c18aef9939498a9a488b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "241726cd9b14606fde623815c3b1758c3f19d02e53d8367c8954cd420c431b97"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
