class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.123.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c654e662a7d6e906630903e0dcb24096655bf0a526796338fd14ae3b71034272"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7f91132ec4f59f08fbdac1cca0f0141a76bbec13ce05b06b02a01516244fcd01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8332ed1f80952974b1e36badb9d71dff3b60051b57c75243498109ca811068d2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a87a1f647b4af3b1312cf7895ff55b3db622157a3dcf2a1677e2d4bd70bb0f9"
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
