class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.178.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6e1c5e2c457eb7f5f066d3030aa6ed279abf4925dd2160b68623e0056184b5c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "76260d32a405960a91a5a304362cf72751af7550931bdca425daf022e31556b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "588a18aca79a5ef4a704ef9365d95d346cc09992091a00a7dfaf15136fd08ad0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2eb287f9d02aa541e15e9d6c994e0dda07dd263eaf0b9d5e115f75b036b35089"
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
