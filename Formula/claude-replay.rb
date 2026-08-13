class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.69.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4557e5fe407c6950a047ff9f2ecccc2950c0dad6966e372160e273793a01ddce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0755fe0ed0aee35ed7f968bbc10eae80629f157abc5eec7640db4adc432c6109"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "28460a755ce2ea6ae17e480aba32f832dc30948594a3f1d901692f7e41d76345"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c64c99cbb2f5cede1aba907311415f0e75d84abca717723d06bcfb2274329f1a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
