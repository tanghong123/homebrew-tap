class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.286.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "16d242a5a4129369b3989f2d216fd831457a97aa0e6c79e38489db1b37d8d85b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fc3d3a77798cb8f35dcc0b348a82e9938feda527ed557d154f7c0752ea8c4cae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31652926bc0588f3977b5fc8935ed88e8836aaff03809eb824e79123b55bf616"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.286.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf2799f73e1712232cbdcf01a936ed6254c2ab317d97ddda82ddc5a9c8b927ec"
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
