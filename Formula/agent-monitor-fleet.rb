class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.234.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "883974061584687f1acf30192c93f8815384384663f86149dff244d3a9bf6f2d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "140904e79139758828224c48b381b2fd7003d7a0779d87121aa439253a1ba175"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "47991297c5b02a94071de55d5d1a9c690793dff8f57814c2f22e4ea2d935aae7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ef40a3910cfc85bda222b06fa066815f2ab4571687dabfd756bc4a52f7b31839"
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
