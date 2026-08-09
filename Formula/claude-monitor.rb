class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "984cd64ae506cc87ddf5a8d3f9d29c1952220a0fb182ece6681a0b7136d3c40e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "dbac67cafdb2fc7b8db14537b970bd93fdd5b8549b6046493fdf3ec014cc0de6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "925d5eb0dfb8ab993a6880538deca2c162917b59833a49979ca2058d28cfe2fe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d968cec1da68588031c85f808d9ba6f92523a11008f3c6548bc76824eb8cdf4a"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
