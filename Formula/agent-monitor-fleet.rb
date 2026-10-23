class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.409.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7d04c7a2e8fe6f7ec0bea1d7a76222012c1542e062a70ab400d8eb2665f1d844"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b0f019d78b4c5157959e0976305ef191fb09356e184dcd76713209e135cc5d2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84cd5245e04784710664692c2a4edff2e44682cb6a8e93efa259ff020342137c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a992f46a2c4fca1b4eee681a7bd085cf55af004771dff4a4a925dbe12747bcb"
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
