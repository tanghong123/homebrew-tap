class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6ae425321db538bcd4ca6f5b8f221b804446b7515268db5e4b3126b028d0e64a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6302a088e43334c03175cfec995f5b80ed107be319153b2b58280dab144b744a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e7fca3d17252eaa99bf2cfe204fa8e06ae6a44c3a79ef745ebb1d8542d0622e6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "042267c6d42349caae820176208e6d03d80471183c7496b2552d9724abb5627f"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
