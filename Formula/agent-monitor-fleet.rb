class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.447.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4df736a070dd872e74093154856af542477476f3b048ef076ee5b4300e95e899"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "edc70e291b1d3c8356a89dd9a941fb9c5bb14e1058c5f3b2a77cfc5a50232c69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d027de4a587b4f60693cb83718d5d3396106558b8fbab3e3ac07e98cd074c49c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b80df28c2df0c5195872a4473b875835bca80a6f04f9a45f33addb2d35f19b4"
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
