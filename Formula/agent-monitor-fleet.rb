class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.107.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "baef0616124f5d3e60452af8371e2bde6072bd61173f251016c445a20f4997a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1a44c1aa31c79bf05b9b57317cfc0d3e28e0ca23df7c5d04ca0f40c7fc2f1315"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "01ce31fbf5cce4cfdf7fe402a34405a7a744d6a7e81caaecd69859652d3abec1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df68c0255784d328c20248821afdce123d0ea185ff6145dc93262933b4aecfe4"
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
