class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "24964c3b23f204a13813e33912229b09d5b5c18c88ca3eb779e277586f023f28"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0eb8bce567d24604589d391c7f4d6bcb258d543bb1e098007ffb2ac19d5cc541"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82614f9035d2145b0ff99967412f477751c3c66342e7369ba74e4a9c96ce5bb1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "133549c431d8c2a3dfaf6346f96ec8ff6856331baf73a326c3fa0e2d1f690c7f"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
