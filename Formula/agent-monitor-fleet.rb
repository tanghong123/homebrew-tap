class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.327.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2455a3ed1ba4820c88bf7b91b102eaf8714b9f0c1c9db97127fa14129398b5cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5b4061190868a0b9f60ac6cd46f664f68ccf4b95490fd02aaef4b2a6134f23d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6118f616d2570b97f34bbcc9783113ab2a0e0900b39b195b27e7b7df6858912f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3fb7e85d1afcaf50a603bec8dbad9d6aa8b997dcb6d4b7fc1462a886d9e3bc42"
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
