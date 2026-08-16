class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.87.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "34c6f4bb2abefc785404176a5d909294a2ecbe7d72a10805d9395ab6f9e1942e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "644214d7f09eee6e238f625682529d40f7d8f963eab1b0b0694f33c1dfd2ddc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "337ee2de0e0aa0bf1239063fc954916d9f215ea00e7d161205bae0acefb0f378"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c377b6e4b5719189f9c715043bb73308ede66804a7386fbf7c6ae5a1e1d2d57"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
