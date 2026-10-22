class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.404.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "34241d0574197097c48a37d56b48bace857563793de882d3ebd35fc40d6ff6e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d220be16e0a9e6f439ba082764906596745161221bbe3c2fa1aed33f98aaa8d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca72bdce14e7f967afb245760913be2ee4e745546c037d57fd0d8e3c90e0bae5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.404.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a37152d6f769450f3de1a559d1d32b29f8002c1243ca559f3acbad9222a0f8fb"
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
