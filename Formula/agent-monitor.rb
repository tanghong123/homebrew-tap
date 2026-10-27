class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.436.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6ae9adfb0e7ee81dbb560cf6a422eeec9dbf84774db5f0285d7fcca3f433680f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "531a765f859aeec97c20c26cd2e47d7cccbc79a93cd1809636265ebdf76fba7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "986f580af14ec59a592f540f128a850b9c42e02546b8c138bca7261b3c38d74c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5d250ee231c45eb3713c576d6694f9acf18be9713b4ada17263164f6ebab2bc4"
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
