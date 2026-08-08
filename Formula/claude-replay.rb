class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.13"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a71d93a69f618c89e375c622b38bb7f0cbda19f8aff6e22412b9645ded82d58d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d76cdb5558984c2fbeeb71541ebf2dc04120adc986b4a55b1859f654d847c273"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92ba631a118edbc86e0da3dabd2165a2298f58b91711a7d93148556965c474b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9bf98855daf413dd8a4591b47493b33bc368a616c5dbe3517bfba685694871dd"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
