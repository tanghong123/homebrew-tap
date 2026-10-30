class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.454.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e0f71f3de057e81b581e704bffe724cd881e66d08fa47400d2016b6f99744e99"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5c42ec13438d5bd3492491abf5d6f5165e00dac91a064a553fa4b43a3811bcd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ece603bd94921574f99828e19f95ee7a48ba77bd078c5f7d15ae9a4accb48e1a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6d9b454ec6a1267b5a56761d693c02f3e1f7393ddcf1ef46debcb920550bdff9"
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
