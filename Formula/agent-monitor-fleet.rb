class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.202.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f0d71c3bc3aebc769880d43739dadcc05c304e985a24ad11c2336995c7c556c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "69d69d7cee3a6f5a6f154523de24ce6e8fc16fb9acbf4eb57ef0af19aedc8446"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2b57fd338c50045da9bd8d6b74d8fb2bb73c77a1eac4218cd33293ddc0b52d71"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f06faf9bb51d4e0e7f83021b3f608d4fbf49f2d351dacfee70d914f2df0633dc"
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
