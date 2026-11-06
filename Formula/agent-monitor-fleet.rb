class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.480.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ccb1ccc10cd389ca88c46be84dd6794f1bbe548718b57b315d5d12525130f25c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5127a70d0f97090d1a250efbb0adef187457db17435d684b83e84c199825bd2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d12605b123f863bb12c7a11b979c0e2a1d8f782b659bbf6ec1fa620dadf98432"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5c39b2e8dd423229a6793e6ac298790558d2302855cb83083e9778a486cdca34"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
