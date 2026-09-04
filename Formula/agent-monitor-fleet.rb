class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.166.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8825f2fe0fba74a891c110a36d0dab3ab2a0f152c02f597f91279b2986527e79"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "dbda7524ad5e4a1264bb4d6553d8b84e227baa861fce8ccf29eef6cf0c8cc18c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e9d452ff89e282ef78f96d891c310e76d96a1c2afc53f37c6142bd92d1fd3975"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17113b690cb0275a1e45c0ba9a756502801be82173363bc20ffaf07e5bd2fe87"
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
