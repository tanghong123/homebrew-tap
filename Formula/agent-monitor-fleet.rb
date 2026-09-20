class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.289.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c381a05e4dee3f40d1f46cd5a5c9d35db2065d5834dc931e747ec9da9b460768"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c32d89e923951c1a2f90bde963fd9fdf54ca8a86a2d84e5314816f01c1395aa1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "581fd2b6a865328ce4eec1ead36d9ce5c8283ab41051969a4dd0812158ccc063"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c4d7dcf154c9de9ba9e473e37154bf52c07de344697dd9ae2057a572300810b5"
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
