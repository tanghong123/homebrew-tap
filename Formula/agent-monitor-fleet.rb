class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.308.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "90ea7bc3aa10f5090634b418ca5c554e2b9e90e8eae9f44b1093f909f2aecb03"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b6bc00b53182dba3fa9b62fcc5df1d68b41c873cf5e54ceb3731b300fadd60ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "785bd4ced35f23dfd862aa35dd7446f2ddd0b53b68bdb09e87850d36812e2512"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb64532d0e43bccadbf320a970d9339ebac84a417736c48d3158542f430a6b5b"
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
