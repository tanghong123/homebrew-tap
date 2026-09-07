class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.223.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1f48988b591bbca6cfabbe5e013ebb71bd69c01122089b8252da9e7564957f11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "151e47a2453bc849c4907b9ef78b8e2e897e277b856eac47d9dc0e171ec5fd78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d9484bfad3d5076c8e115b443ce6790eab8feef8ee117340d770976a6086351b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61d193a130ebf41500f8d4ba75996704454027f5335aa36e96c5724110645793"
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
