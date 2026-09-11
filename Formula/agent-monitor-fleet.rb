class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.254.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4e46f6d85f78b58a5120dbf5f9ee2523be8c823a32a4b486fea891a2a6c70b7e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "838d55fc76e91dc4676d79102661c6a0c0546ef4658c156572a2b78f3af608b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "612101c6af5f2fccb5f18742e12bcbad19e9742684b394e7d3ac7be20c654134"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.254.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28e1a5557adcb6c0235093d99054dc04ccd146468a865fa8726bce92f3ed0a8d"
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
