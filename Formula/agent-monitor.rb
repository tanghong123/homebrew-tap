class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.548.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "70b76fb80177102005f618dae354c6edf0278e97c1a454ec928441631427cd53"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5906a2d9f14d614dbadeec057eae7b140d37f69106e08953572624660b925e33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4c6e16ebb160a525c729ad52589aeba55af72395d349c782521d66ecc3a001d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a5f3c7ae948373c51bb29e6cdb28e7c0459edebcd1e75b08284e9f5caf0bbaf"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
