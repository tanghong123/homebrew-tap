class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.72.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f14e7d030a297e2747d79c49280b6fa9798ca751bc7d181b48528b68c589bd27"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "02353b89b93a8179dd5e91a7fe257f10bee1327c149623c79a1248f6dfe7befa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9e58d9ed15882ad5bad90ed477877004c1993281decf98c19343f3d4ce15a01b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76ee63017bd5a4f7b2cc4909f170c965dc3c597a64aa5953de6fc88e31a9470e"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
