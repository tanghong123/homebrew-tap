class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.574.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "eb8dd8092d1337a198e021ef0025a598cdd4ca3e78cc0d3f9698a5745e6acd3c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "aa981e47e0783dedbbab8ddfe548e474bc461af8aff9f26e408da19145b7ee4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e8230c4496106ba5e52736aefa0bf512c5f2bdd0cb3848b415c61267679d9e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "21330ea2d8a1504609290fd6764a04f63a83d3ddc3723e9c98aa9d3ad69b181e"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
