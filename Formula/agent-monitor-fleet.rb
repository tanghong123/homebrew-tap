class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.167.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "468f474f0a85f5b8f5c5acb6123a2029a7aba090690c0fc1b11ed279ca34799a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "58e7d7c51a2ade947185612fa4e96e9e1e42087e29ec70c9afcf7b56f0f4368d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c00f6e3ca5e4920b0274791f738c4dc0adbff8477b17de5d488b6553cb1436b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "704ab6aec5b5971ea5ed2ea13b307b80cd2c5c8d2930d26706895e69b9c54998"
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
