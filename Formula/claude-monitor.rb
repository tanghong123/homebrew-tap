class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.18"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "10466d27e781b4df3723f7e35cd7c22e585accb1508003b0b02a243d8bd3d299"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f57645ec4000ec5929a81757e08170f815a292c73a21f803dd3cd353821747fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c88c61f21b19e74c9ba253f1e1d889ccdbd79d51e4df05f70309baaa2b1a6813"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a0925c2c643182acb9ef43d73e0be48c95eb0f48f1cfd988969e79949bdf5d8"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
