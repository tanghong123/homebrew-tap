class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.169.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "eb5c9f5c2dee527c215c017c149243ae6fea2913c8695ae3e3149ba96359ee91"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fbdf8713cb594dd2fe848a88db02eea4311bb9d86c5c4b16ca36e9fd10a8b78b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "940c3ca69ee4d705be6938a385630d3a61eccbbeefce2f4a2c14d313e112f272"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.169.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "87e4a74ae4b3bb01d081477501c1371634d63516309d770fc9a5bd0ed07f2cab"
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
