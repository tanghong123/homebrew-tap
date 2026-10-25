class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.421.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b789c87d85d4068d63ccf5e71e62a5933816c4459e9d14fc320392f46283678d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4e1817de9da5262f4885ffef85e4abc55e91e435bc3b7bef5f75d2c6e4c8335b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d3012f8025455a84e54b01dacfa3d23dad691d91d74b109bd46eaed0fcd808d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f6ff19159e841db7af1f9caa712dd1ffb0f205d00a8606d568e486228829b39"
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
