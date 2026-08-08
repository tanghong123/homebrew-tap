class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.19"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "de5861e6520d7483133f67919a3792a4b9433eef7c0cfda60c68c6cc21d0c48f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "409e5a778fd8bc8de880240f5ed57a58baa546fddcec6b7391286ec67e66a8c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6f6d1c9125c202554cd857843c49dcbb41ba14ea10d3ec6623b83a5edc51c2c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4d500908bdeedf0e0a69c0e8cb8aea99375bd8624f0235d4f84bcb3293b92e1b"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
