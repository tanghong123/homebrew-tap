class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.273.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6a3a1bb67e592f992f6a641944acbffbec29128b27bece87d87a6d8c6dbcbf81"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8f4fe064413741eba21a6587d058a418a98f080e8024120ec3c1e24fc7af72d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ab0eef9044ca409df145ae00205b037681cbd63f373ba34ed309b3b39d716152"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "34d4cced926232bd1b1fa87aa531053d418c5446957a7b3abac4c4e8b29753bd"
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
