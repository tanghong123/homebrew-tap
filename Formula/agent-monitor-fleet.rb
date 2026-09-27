class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.316.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c9be21c82777d44dd05e23abe1511971aac839488ac0ac0ff3b4f9798a103a5a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6e018bce74a0caef2fca4b59de0751c03c11a1ae4d1847ba0fae6eeefbdacfb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98e37478bc355bfff9d15bd98b61c3e05e0d54622fd3f2cd9a03c00871cadd15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83765ec33c72d53d99b94e208148703741672aba7e97ceb4eea27f43ab37856d"
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
