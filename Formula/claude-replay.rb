class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3f60b33d0a1be26d15c485075d5271564c124709f6d3a749a5c587eadbfb1d48"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9d1de35f8005350bf324180980fcf940d8acf5f3e5bac810fee71d634b623778"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c597a3a1799da0af27a868b111a95362ed38638d23eee385da3a40d8803ac238"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb330d35ea06b4ecc2dba8653807f8230001394ae2eebf476b617292f339fd03"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
