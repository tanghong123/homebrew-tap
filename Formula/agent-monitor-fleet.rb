class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.460.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b9a6055cfe0265ea9dd2d24b365993298807e77e9b4055ef4a928964640e109d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "aeb9fa7d99f267683ca201b8b6fc25726f347d6ba0d39c0292fa91d3dad9c925"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b224b0eae5a7bbe39bb99c9b5437bd4f8620f834e9ee5a2a30fc2816acf75b41"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "07f72f4a12e6c16b9a7942ad088cabb3e78d64e02b7a2ce0519dd896485fa17d"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
