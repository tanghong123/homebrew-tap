class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.15"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3392f6898f203526f6462ee3c324c37df43b3009fd7d9c06673fc76305ab4d81"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bde2dc5236bdb42813476a9fad9823d5f58f332281955631f3c31d194ebfd268"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a638994676913139b4862b1d5167d2268e1e4ee9ecbdaac7a0b2dc367cd33609"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "baf9b15ca152c724cadb04f8937e32fcd4d9a2680c4989aa7d896e8fddf58c22"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
