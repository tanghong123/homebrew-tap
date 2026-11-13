class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.519.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6c81d706105ab75fc2608088eac28fdc60e9024f689a6a533d18be7116e8e2d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a2452af1d204d90b8eee9ed1bfcc65e24b99b0aaffdb4faed44bda79d59b36a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a014b5dd50c1ea8abd6838466e70a96b4b294ca719f2cc2b93d0556a580d1929"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e87e3056547e155cfbad19a0be94f882428c633e235198ed1817bffcbc205195"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
