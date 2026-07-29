class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "533e113cdf76235d27e2be077fe11b0f9ef757f6b0f6783332c2aacd0557ad13"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6bc68a3a9b7dba79985969a226916c0f03dae389af20f7523cef1c92dc6ae818"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3582b4091a6ea5cd2f329e51d0472f4e01c09218ea35b7a7f859ca5cea4a172f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc341dbb64976f27ed31c352a5dcc86eef1782a6a1e399b01fed3dacab5be0ef"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
