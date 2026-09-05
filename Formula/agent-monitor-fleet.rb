class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.197.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3ceda440d920f578f2c8fd477f8a3701c807a140601bf6bfd062dc2fca09293f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ec5475b7dc36b6b6a6cc2ecc7e9de25421edf20495a2610a7bb8b0a17615ec17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6c893c9410e63b73152ec8a612a5e1ccf93739ad268c2d1862c480679a2924d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "11c6539dfc9bb378a18f43b87870c17d74c9d8940f0433a41566a3318c29eeeb"
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
