class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.438.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0db15a07f1c8d3cb9b67f9de1e233b1f771de329953aed0ffee49c6736721bb7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3cf2c9234b5d5a42162811931943cdee09a20c41a9a832b37bf3b23c346c58c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "76274243e808e78e805d8f07d1c7598af86a4de5533a7fdb3d9dc6de8f2be354"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.438.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7a0c8fa2bdbd2270cfa179bc3a393a812634b8c13fa81b7fa1cc70a9b7a91669"
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
