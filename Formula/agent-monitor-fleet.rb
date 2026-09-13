class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.268.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "44f420fdaea45a29b0ecfd123f52da05c75d47a579639a4fe649b2f50e930ba4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "54ff6388ef9f197de92761c8b6dd1d16853d416d6541c25530f98e52f7b337f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff92c0a134948a521b2f33f8d33b2b17813d67929fdbc032b3afaa03de02ea59"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.268.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7aac7ba10e3a199fd3bfe62fe25c0bc26a944718320a602ff6ebd84ec2e0fb92"
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
