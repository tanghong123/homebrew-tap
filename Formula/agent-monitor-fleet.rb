class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.281.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9bd095cb9ef7b06b65c0f054064c08ae030049cb298384223bd4a875e762fc55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0b1723833325f82d9671547c37bb2b5ec5fb897aa8fb7b3d8e12d7c6f90a1460"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "01d1b8a9dbe0bd879de9a96c22f72c125231d9ec4056a41f0c87889438a53d69"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ffe3218905a52cd190a24b66df04cd8c817da7f7045e636d1656fd83a9dc1654"
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
