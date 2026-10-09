class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.367.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "64134b0c8003d8dfdf6b7d99e0d50d3869b2017fee8a03b4c5600e323e9861bc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "dcc566cb20c3c18aa008fc5b1c247b0e7090a9e624f5a27a44d9212f548ecb85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c742b7149ae1d1c5192d512c4cf2c295abf51652d0d8148c48e49a18a4d0eb6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8e91a06767ab595e8f6eb603f36795aae0fcb32a626e85e13dcdec2ad6200420"
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
