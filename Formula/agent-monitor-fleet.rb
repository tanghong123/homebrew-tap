class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.266.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "83d459621f0768c85e1d9c7527093d9c5134892fe9eface54665b25c29b12c2d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "25ef49406359aa544decd1421af162b4eb40a7a190291ffe42a62e94282534b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ffd39cf8061e2d1b4959affc860bb0eba2770fb24e5da8f082247d80ff9bfe65"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7013170d3b9f3d98edc21a3b8a4befe106b9e4bc7bdab96aaddb3a36f24a8aa1"
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
