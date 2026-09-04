class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.163.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f9238e2c8dbb1fc0740353ba83e7b5945d648edcc1405eb79c2d0447b22ea91d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cbbd30466a3b00e872e2176832c48edfec197cd61b550fb0505df674d0ca704c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "744f41fd72f304e8cddd9588918639c134e2adae588ac9fe99032f8f85078bf4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.163.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "edc0f13c439a26d4143ced0d73d476da9e6eb8a17adf7f126f99f1e53ced9c9c"
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
