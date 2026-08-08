class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.7"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "02863906a73c5a46a502a0247c01cd9953604cf99f62e9b93dcf682d4227476e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9c676ed98ee7131ac4f2cacc56daa93a47c99d72211c79d845bed49cd7d5d5d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd0f24bf9a833978c71310104091048a3ef2c7b1d3ac727f7312df1df7663b11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "29fd01c02543b1d4a1d3e0d920eb338a1d222fe241347b1c5056a0ca8bb83f89"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
