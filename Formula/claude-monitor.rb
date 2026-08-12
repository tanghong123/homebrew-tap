class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.65.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0d29e63151318da6fcf8329cafdedf4413921f4553d9dd90f8b41f969a4a06c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "16e06c96acb614c79d4b90ece3a1efe3062e3373faad6200eeaf7913528a1578"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6be7e439f534364f5f62f20f8f2aa7e8b4154f79f15c065522e7b1a73939ca9a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.65.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3066cad6592ebd0c3f5739e5d854dcccbb281be512193bfba33b706bef5ef649"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
