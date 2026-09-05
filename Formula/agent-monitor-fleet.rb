class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.185.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f7f4c7d8ffea7b5a8aef0459c4c55dc51dbce847679624918acb6490cdb715d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7fc92399a6714c2352a026d050139e3ac26cc684cc403ffb7d4b85b39455911a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8df7d2ff89f4e4d53c239b28960fa368fcec9d9f84131a32ac88d221bcb48258"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "361f2cc3fb251a6c9d20757bf80847a5546360613684a93d1d81033e632ad012"
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
