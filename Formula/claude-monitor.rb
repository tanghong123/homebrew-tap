class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.57.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "09cd71212ecce41e59e6f251ba5d8ae7513a1032dea2dcf37b07f39ee949e9b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ca1e6da31e4be11eadb0d84065959fc1443d9c268c4920f8f45d52cc27ab079d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b23cf61fc84875f25162e47464694e6287c0d22897219eee957230a33565b767"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.2/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9815980b69fe73af32e81e4f3fe46f5d0f30208cdeebf8df770da5d4fd898ca1"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
