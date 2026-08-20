class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "94ea867bd5dd7aa7bbad2f498485fb6fdb84bae507e788524bcf6d276e44af1d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "997e2b9ae0cc3db03a720d936b6ff35ab68ffaf801142954c5734dd3eff1f2e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a902b5cdbfd45b909dcef3c9c13b2a39a31119466527401cd75c5f6006aa5d67"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2141174a9df9107c0274a24fd4e847cf9791244acc29ed209dd2dfd4af5bf3d"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
