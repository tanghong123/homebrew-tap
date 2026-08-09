class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.57.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bcc3a3cfc97e10d38c098d912c7651f8b6bc16d83e67f58d06b475b3ecd94b5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4819b7fa51e2c8fcc8aab99f0252c2bdfe854a4378bbe281383091fd4eeb349a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5254f3a0659ea770768062dcba719adb23e92627384d14c927c57ea2de129249"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "44827e7c95b7b2b3afc0297834d8ba70848fafbfc1ad26621839da89e21b88d7"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
