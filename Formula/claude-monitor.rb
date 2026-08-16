class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.82.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "18566798ddbf805f1f59df138a35d126529365db33c08e368f74e69c1ca5e4b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1853e3cf1031254b8c234e264610cbfc95911e78ef2f844aa2169e6960a232be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "725870830d31c0779ec44459999dd6a2df5632d8fb8b7e34fb676b202a75fd98"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c3bc3f60354a608b825d759305e585f49a8b9b8eecfeb0b3192462df39d800a"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
