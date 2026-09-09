class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.242.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "51c1f2c7e47677c5f1ebb9191b2babde0381fc02e752b503da196078de499099"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "64677f4182e8c2f0dc2d5ea8433fd4d05d322022c8858e9e3d23ead1b0cfe4ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8798179652c2f15b9d3c6e99374fd0360f71731884db4e8858041754972edc6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "423b8222e5296e98bc061682ac60e6d90872d21072d3d37952c9c0a2c1911cfd"
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
