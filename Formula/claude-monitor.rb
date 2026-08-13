class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0fee6c3dd597bea79799754d930d6aea689be2fb98561c2bf56985711ee5fb02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d703dfc798fbae706d2866de8c4ed2f8d7100d124078ed685affb37c760aace5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6ddf1d196a4b21720c414b9935e9defcbd503cd4ffdbad59d0eb5ef869a2651"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2874b8fc673088b0c9330f69998bd179e7bd2250654422030ede07a7383af3e"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
