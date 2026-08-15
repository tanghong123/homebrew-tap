class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.78.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b67bc6f532b13930fbd93f203ecd9c78be5187e784e0e992c6205e006d526415"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8e261040ee87a7b56ddc1a11859deefc380a726733df155c37ff575e55dbad5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3b668233f6a474570e340dfef813e02d4dd37edc6a2db9ad8c9afa3ea42e8861"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9005176a92c9d8cf12c5b153050b0169517d1658ec6230e7c6ba4f13644d3e36"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
