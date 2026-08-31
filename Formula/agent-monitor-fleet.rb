class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.121.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "88ac3a0e89695863c12f9cbc046ccf3a6bcab0556c110742c1144f236d977685"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d4b88d39e270e11e7ac5809c138a0595b405fc0ea7f3f15a63773492d122c363"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3d20b87e72c41e902c463754bc101e1d7bde70c1d9d91a5950d446f0917696ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.121.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d477f2012bb07511f3fb1cfd1003828be120f41897e0ec220e40336892baf7c"
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
