class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.431.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "60adcfe07995225d51c55adba8717b1c62e3f8d4ed2ca41d0970d99bb727535b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6feae4d94d1e5cbebd8f5b02928a39a533fb93c0b92dce2ae98e7790ee581676"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e421d3b98e478de4582cfcead15abaa6b1968f939f2c25eb8cf4a7b6a146d05a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.431.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5ac74e80608f0bcb725af8ab51bea2fa787d6112cc917932ef1cf65b058c8198"
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
