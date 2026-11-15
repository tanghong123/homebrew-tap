class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.525.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ab6abd1b20f5b758461ff543cad61acf359d38b267b143acb51eb6501b39f172"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ca8df090014e4d05b85eb0742d1bf0d48dfd189f55f123824c5482b0817e5074"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52676d76dcfe62f865931b5dd249bc799e8707202b1ebb107254fa20b3b562aa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "608d92cc295190012da8de1d191e6dbe344f0d23e6e95b729651992d4102f7fa"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
