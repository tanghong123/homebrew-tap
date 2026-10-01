class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.339.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "effe1e29ac1055a29932045853ba9c185f973a73c761d5a1ca8158820a2f9eef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9ab8f1b861cc28694c0468f2c9f36d082c77573400ee57183ee96ab0e6703f75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4adbbd79e0587f0b522bc4ef1e0a589e046414da0144bbde0061099ea45b9941"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f3373fdaee8c9cc3051758ec5617ac16f4534baba14b18e414f6f275d7f3628f"
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
