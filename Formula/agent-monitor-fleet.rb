class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.453.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ac76954c2c2e44325a4c4925b30d5825d624c46f90f1af9b549b7064b694be9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2b55b2c61575b1faae0900a2088584691f58bf3a811f23f53018e50737bf99c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ecb1fdd6a3b3ab424d89ade8d02b89bc179f8d51a00cb6acc32e3116b27df958"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0bbe6c336250a4724d907a1595f65991a7de9e1a04900689561cccb533e9bbf3"
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
