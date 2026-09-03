class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.131.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9229466e8dc7b484e946611eff120209da7c683fade09ee4f63f12844736e7ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d413241cc799bc627c1492fb1e80d13913983d66df040afbad2b575452dc91a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e49699e88ef258903f8e19a7809dac4a831df95005f4f78f73bd7e3d07f66701"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c3ad97a58a4866e2f8435261e9218ec9619f365217846f5189e85013a4644313"
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
