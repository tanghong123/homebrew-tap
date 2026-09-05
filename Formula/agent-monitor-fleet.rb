class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.204.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1ae00bc789eaaca4a0aaa83ac025ec3d8103f69c1fb51b7ad8e667ac020addf6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1659a2b5565e98fa9e580a6373ea269d543ec2856329c086fafc389efa39a2f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ea108c7424a9938c8d08bd3ac0332c546506fd25646e3efe5d4787515b333a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.204.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e9b2e6e343341eb451e18fa7ca902c329b24f737be4a9c5b59bad963b3eaf80"
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
