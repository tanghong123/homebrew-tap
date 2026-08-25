class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.107.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c5480699cef84bc80f68f0fb8eb0d214bc38824e840aebf365b3e4883ba20c1a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "986eae46467fd1ea8e85b879720204c95d3d8a94e589a816bf38eab293556cbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f3206fc7a970f505972ff128c7e13cf397233f4421a0960ed6348a009c1d27ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "967d92a693af0ae7cd9e1bc44b5fef8ae86a70b5d140bb0dca88a513e72bbe0b"
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
