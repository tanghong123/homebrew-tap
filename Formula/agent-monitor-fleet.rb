class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.412.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4542a3d1f3a25e6b34506ef9ed349a40a2da89a7f735195fab7938d1d19f8922"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b491a0045642474e4b1ee1429e45d535e39aa3722ad16397cbda673ef4b86aa1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54dad1367b85edc57ef55b89391a45a15406df1e28af2324ed61335853ce9a1c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "40a0efa89c416aab580f69eb31e9b65c99dd43c01c78a023a3d7703fa2bf9b7e"
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
