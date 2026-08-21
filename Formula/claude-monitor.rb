class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.98.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6c0fe00031694d56c984cf6c1a8fba0faa22ce65c138a1248e7e407d113845b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bf84fdf208b2e28c364e64e6cd5846d0b461c72e5f8864175a03be7b96deb1a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "380e8a7cc5f2664c74db2b07c854bb18969464397bafc374a053f8242db4f89d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c394022cb24b098bca13caa68d326ff0f2c625ce7348d10dea3e55b3e06e99cc"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
