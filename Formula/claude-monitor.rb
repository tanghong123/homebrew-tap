class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.63.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "793dd89de6fb8b512b8a75659a85aeb1cf4bdc47563a33ba446bec02695289b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7cfb94539f4d2af2e8942f96ad8e7e5913296c89cf0ee58b32383d7ba4d9b287"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da62ab97b43ac14ec56818099c423d4c13aecba48f4b09918c2bcafab1cb6498"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c316ea6e91c78209b29afb3bfc5b93bcf9323d9bc535acfb34d5b09babc3eaab"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
