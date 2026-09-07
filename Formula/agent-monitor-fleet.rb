class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.225.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "af5a31a315346a44a10c78dae40e12b2abfb275f25c8ef98870d20817c051971"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2089629447d1838a1c20a03cb9a74bebda66c07f3c76a74796489f6c06c4fa68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9524c2a55e878c15d6ab84587264f0b8e7e54192c0264e3b94132e7d01894f26"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.225.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b5a50864d832c6413c14cab21f3bf7c83c3f6d9b1d47838ad923a7f9ad99ee7c"
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
