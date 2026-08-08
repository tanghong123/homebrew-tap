class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e68c8b9ca4fb6de6af620556422f8fb24f98507ef9f3b1fd0e5ce482beeb3734"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "3cad6f3279ffe40c92de008a5a69f50e2cfa0e5a062c4fdacd7a4c47ed4859b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "771ad26880cf1e8c9e56cd189fa09ba127364ce54b377312097abfccca98384a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db0e5952ffb15c735330c160854a7f9ed337b86d3b3674cd46a05ecab0527e4a"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
