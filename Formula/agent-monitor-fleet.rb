class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.318.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "5e5d17800100738f2d902f56d7dd60011891b89839bda32df736c5ae32bc2729"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2e8819f1efc44d5695d132e2f679186b725fa20084fc422880017e57b723144d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0efc57311ab106796f9e82fd5dc2e1700608aed3499d6ebf0d54f86b0c545e17"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "927f4008f043538b87249cc9af013b3dda97dfe4be5cf9f43aca2fdfcee1e4d8"
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
