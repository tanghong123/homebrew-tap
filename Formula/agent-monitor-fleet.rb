class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.180.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d923f503661dbd9ea6c83666f0dfb586f9fc941a23dc1ddc8c9aca25ea223e4a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "137fabf29fcf9068638c3c1fb671be60355ea41fdcbe73c2edf7a7b4bfff618e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f30bfb220b19bc00d0d7decdaa12504c6e120feb2b6cdb4a642d80a35e2e04a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3cfc34a9b85a96ec597ab5ca482ceaa0ee515f3c210a7ea5303636867a6873f1"
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
