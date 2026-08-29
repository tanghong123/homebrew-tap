class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.115.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e866dca6134b09d8eab46c17bdc4347c7994503210acf6f6c3432ba3e731b6d1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "67b49c301c5b8ee00934b6dd949b397d8a1fbc41372492fbac3f7570aa79e461"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72cf5e492e1f0264b1b03bee6f5c55c6dcf278e97e3beef68344b18050115754"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "982f77a79b90472c8b949617a408b7ee8fa575a9c134e7b1dd3bc70fa6b3dd5e"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
