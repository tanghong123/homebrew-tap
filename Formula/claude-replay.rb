class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.3.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3b8cc76410a7cef5e8ad295d96042478a65114ad6aecf258fe4dfebf12cb0aaa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ef6024a4e69d36494920054f3ce93a99aa80f6069bac7c1769bf127692f704e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cdb22393f558ee8d43bba068f5865847c274cbb969a85bb50a00d4b4087a23fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "898462b1577a596339f52865549b74b91a23f52b7d86f31f5d539b5d72aa1794"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
