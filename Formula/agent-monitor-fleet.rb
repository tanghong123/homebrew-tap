class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.323.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "abc673eae9f9391993b8332ad19e5f63356eda9a97611dd5e1e530298d955a46"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "18fd1f001960aa70461b83f901725511a9e41d444e25b43aef5d227719730755"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "73d0ce48aa16a2bfbba88ba9d08cf70dac75d80e48e0e20840215e1dbadbdf05"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27cc9dbd77b4b3abf33fe5836a425ba52468762d8ed5ba38d0b18659ed45e13e"
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
