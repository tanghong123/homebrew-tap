class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.23.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b262d2952ca3e61647b4eeadc758c1ea71f16d0176f8463e1320654781d0049a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "056b6808b250ce94540b9a26001f99e61054772ff5c802124cb59332e690d68a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f3a696714c5beb6cfd40cbe8f5f988e592a94ce06a3c8fc5e837abac8943a3eb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c7aadb9ab8c22e160fd58653310983b009e944f6923fe6e3b3f97c7d1d5ce798"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
