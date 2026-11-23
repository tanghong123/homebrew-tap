class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.556.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "08539e3efba9e19dbf217c25d70901482872788d0290859478383be71b66ff7e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "74b6a4ad37d49943740397c92db2d806fc4ddbf553d8a24db0d75dd77e4190ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa9f3931f931f3f0554d92dd3ccdf00e60ec078409488a7d2526d4a5dbdd3f9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b9c20ccc2d9255d242e922dc7af610fa36052f7af7d4da9d01363831adfb8290"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
