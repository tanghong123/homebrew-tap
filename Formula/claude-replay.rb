class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.84.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "826cbf2adfa88e6d96333dee63ac4d96f9f8ed1665b1af565b58a9577fef21f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9e38b58a5cef6d058cf12d0f8c117bd63832871f539d9f7015cd4ba9085eacf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e4bb79511c50e4742b861f42645b46701388965b14c0896e18e5258794f6ec46"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f4443772f2e8a6b91a7a0324472cf6e6b24d9ff69813ebfdb8fee61bf549efe"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
