class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.236.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c57799e9691a2285c1efdb1e0edb249ff8b27720e1d555dca227197a9dbced11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6b0e40c0d01c4d3879e277a17873de302e309b4ed782a6af2923dae69a0b346e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d8c7f2fe1c61337b1a4937eaa8c686c310bc939f35edb0a515946e7fa173f55a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.236.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e5351a49e88bbf5b0c4f95cbee626c163942a2b3757a83672a568a3f36097c8"
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
