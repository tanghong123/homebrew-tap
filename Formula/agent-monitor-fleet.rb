class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.439.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2a9374de8d2931cffccbafae356862c339b6030f6f0a1a87df79ccf13e4d24a5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3010cfb5b700687473525725a9027baba07297f91e3fd869e7623febe6ff2816"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a8f3f0abfdf7195da40e947d4d000f6f288d318d9f05306a18af66e1f8ba4448"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55b158b94c05ea517bea57556187ff97bc5c81a10ee58cb386e42de90d5c656e"
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
