class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.240.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "58322761cd1417951c64fae158f20c3db2ab88bcb1802a92e538730ee9a1e83b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "264a2256c3cdd301e6a5e2192ad2e2c6a964660dcf219994122ca61e338bcd2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0437e0b039415028feb9867abc6d318a91bb368ec93161cd57f79b5ffa290af0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4e5737e423cf5be4e85127e875f4c3257b726e203fa2e6251619d15f8b8e8d14"
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
