class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.425.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "45ce393b1d2d99b733c89a9a7284e8380df44b7d3fce6619f353fe3988673226"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "18fe2c623642c83c3f3f7cbf37cc3914963e0cd3d212c9b7681d9f8751810613"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d2386112c9b2fb545dcd9970d60362cc0543ca7d65db53b7b1938821fe28b937"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.425.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e9a0cf948b1267bb79668a080b468b92f3999609dc22c6a04eb52dff84efb1e"
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
