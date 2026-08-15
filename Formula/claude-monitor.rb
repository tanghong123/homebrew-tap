class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.79.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e663f37542a9df216f106ed3d551cd752c9b957271ff06475a7326524595481a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0e607df8db173b219f9e2405fdc6c427fff743fa3e707bcfbafd2ed78de0021f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f2bc3ed0241dac4b11a669802d4797e1ee03406d45fd9e13a560384a304caeb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b4b7927f9dbeeea0408fcffdaf7251dcbcc4d6943869b78f595fbe5884fff1a1"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
