class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.328.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6d9c7424686126696b9721115f6ec735697d2f154e9efea806796a2784dbc5d4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3d49b7e0b5f0a5425c1bbd09ba19848f9cd0e2927fbf796f1acf3f173f87b1fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3abc693ed4929d23d35a35b5b0e4eff5aa1370c95f1057ff0633c212fd338c02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.328.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b394dd522a6c522b028bd5e69c7c6e7f2283b8c923570973294dea600b609ac2"
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
