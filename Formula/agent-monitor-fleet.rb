class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.122.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b1fbda62ce79d58a6909af71af825e8d12e04f23e9607804adae9ede46fb55fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6c32f8462bae95fbd73e7cd11811eb067466c7418420f6b627963fc17ddf8a8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fba1f9a4bb375632603041388b8f3438080bb7854c835d3cd3c5e8f9c93ddac6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a26557928255d3dac74b027c3e099bb786296717e41ba4426d7eec049737350b"
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
