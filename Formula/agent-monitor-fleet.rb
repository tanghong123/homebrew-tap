class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.249.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "824516d4fd4b956c8d8eb1f42387305634daae2213f7b3792b63236fba0c181c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "623f786fd308f0eb385077e8838b3fd64e9b39e13d8e4e0d831e478321716696"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e95593fd96811fbf9b44081ee6421f298a3c7fb83bc737c7f49d16acd95ad3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e2a436f9dd361fcf412612007ae4c8cdf8d64c5984c9e6741041a16ad555649"
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
