class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.538.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4d524e47b15b7fad8c5635d84b20ea6091aed3f377a7ce21dd3a4c65a81edaaa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fcde81d6778520f1a63ac31281329b2308175d5a684dab161d580144c26d0d81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d2c636285f8c5a38f2fe56d47b4d7ad82c962804fa58adda81b71c388eaad465"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "405c546f489e4950f4a7e9391f61be6a4d6aef2b4370a02eb0ddf8c76a05cbe1"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
