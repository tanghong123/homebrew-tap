class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3caf4674d3df38173ba802ffab82be1d6a4a0a726b33dd0f8e29b5d4bbb227be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fe28fb5d9212730fe8a0cb75432766be7a3aad288abd8dfe132c1951c89f1478"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6f5f8efeec2e5b1cbf38137cd1f031fd2004e45deec55739908016bf787c9132"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.2/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5dc5c537d68b637c5468f6eb453c3639f38464f092bb49d0edf5fd3da4706567"
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
