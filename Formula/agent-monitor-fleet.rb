class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.476.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2bc89aac6577b6fb0cd636c1bf7014bfd3aae2ae7aaffb3871ed0f6a812ae924"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4663eb9589aabaad3c1e3befb8071e2212ffda7df6f6371d5158dca161eede32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "02ddfeaf7640a46d4e13f8c4ca127168cd6437d91471c54e5497da6fd8241024"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6914b791edd4a08f2cae942a42996ba08fd0df563daa36442f90163adb0060f"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
