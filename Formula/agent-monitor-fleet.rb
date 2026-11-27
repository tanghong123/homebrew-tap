class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.575.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8e6771c16a5890594eb222aeda81c890c6020e489e2d783b279ef4cbfc276377"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "344d841f715466b2ea79326ee2afabf187e4d835eea7078b4e11045f650b2d56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5aa3be4c48670a3ce9d3c002da6cb05f430cc4540aabe15352594f6d3d72e9a7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eebd723cc5673075e804f41afd32d15b4bcbab0f9a3795849de715b540e96d1d"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
