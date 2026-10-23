class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.411.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0d32f2a603d908b5131fe4aa0792b1ec3700f07a84a2c3238a752a8f597b7e6f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5599b189165aa2679d4eaeefee760294b7ca81dcc5042afda3a23ab0a3fc59df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ec1808c333b1f7196d2aeb1f49992d63d50fac2be57a41ee3e34e23d32044111"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "459b4adff1ebfa12694ad0d4cf4dbe38ea983879aecce11e534d79b1fce9009a"
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
