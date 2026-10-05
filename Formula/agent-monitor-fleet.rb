class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.349.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "abb33744bf574bf1fda25bcb00d91f43605d69d5b36221630e843405ee09dd46"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "69d2a921170b4ae34069df6b68bae5276f017b76f7b1b8f0e3ae7c1a361c526b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75f775f0080ff097728c3aef44f6ed63ec32ae20f0c04ec42f174d00ef4c341d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1587ff7e0e6a301e74cd9c1194baa4a51cfd51634992acc81fa3fc246c44aff1"
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
