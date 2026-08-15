class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.81.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "828e7ff4dcfc5a422d6448be4d167754ae8a9a468ec729ced829b83ab250e9e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8806e6e1d960cfdaa9b175048e58fd66f2c50504d5165927c5f31805462c5186"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "971f29a23652e183164ddec30d25e96710723b7dbb4b7d740f9874fd4c782977"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71069fe2489683f8a6931798617f1ea87e007755ecf74bdc3b7b3352c7223732"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
