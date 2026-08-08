class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.8"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "315d154d04101436bc53dbea89ecd5f4456d4d34a2176c0662558f29991bf9ca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e054ede837e6780989cc284de8ee4dc03ea7e5f37afdc5a905d4afc066e88477"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f26137ac1fe0ada30f375149b98a5457ada029e0cd455877e629a24371783dd9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7a74344ac48193e805e03b8ae81098e66fea5d27a89e93223dc2b6bf4082713"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
