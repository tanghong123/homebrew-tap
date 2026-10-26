class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.428.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "5ee0c08bbd0b3d88f8804f303c3851b9c32ff1d3d58bd9b2bdb2924fa3378f8f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1129e2fe89590a742bf9ddbf0a73f9256be9c8fa1f5ee920711cbafc001b8f1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75932ab43ee55e97b5300ed1402e2aa0061ead15abaf2aceaf86e68287fd28d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a270fc99928bf4c90e97597d14725bdd8a3f683efab344629f06f8b6777d8929"
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
