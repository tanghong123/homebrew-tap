class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.414.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ba2dda314eddbe5f34784da3fdac52b8324ff208b21c2f5da19df1f13e6e6b47"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "94c52f8757157ea6bce9a8f7334c06246964ee0f379edf6d5aedddbaa85772d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13836b718dd3cf6a949d4b072c751c3a0d3cd8ac89c3ae11671a089bea92450b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cce76e9bf9b37fd717d24b1e7a897a79635fd2c533aac27c8b7cd538db0fd65e"
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
