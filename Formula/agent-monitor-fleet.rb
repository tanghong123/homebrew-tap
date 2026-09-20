class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.290.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9df2f6db7ae4ab651e67338a587736cf3de8bb19c96a0556f3941b2d2cd27fbb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d94fcc9bf7148fde97a6b7e87aa8b9168f8891fb5c86af66a870463de10fa6f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c6d1960c5a6930fac644ad646721296b24b9061b57631c22ffe74fb279c7e7e1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c4153740fa2a0809e82f631dc9d9e81e154e18f93da388b0cf787f92c9251052"
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
