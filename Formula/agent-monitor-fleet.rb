class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.499.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f5613ebb59136b4d23defe76807d1f96bd8ed3aa0c3f7afca3dcae50b5ee8109"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "065a4d89403ed5225d598514db04e70abaee601b483ce02a4b994fd69bf59fe3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b80ea8fcfcabe53da924fe652a5a400e74c328b0a7e5e8dc2642948c09ecf48d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f2d5dd5e6b3cb44fd018ae71e42d452e0f1802f8f66aa769425a2e9b5a4adee"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
