class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.565.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bc4d65e81bf3ddc610e150ab47627883b5b9059c1f34d21631f25335b7d6cdd6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "72c93ef1ffb080897fb158cd6ce1fc1027241267bf5a550d34c27d36100a9441"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd7abe77e2b71ab67c900c2428fc18a0b5ac595b88505005e8e35f5fa696b5c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85401ea89f78aa77d4f9571f499f85edefc8abe4eaa7fc86ea3798bc2a1f27fa"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
