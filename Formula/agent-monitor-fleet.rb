class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.132.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1be5cb482a3d06816ef08de996d24897192cfee477e0f429f53477542d1aa212"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e6cd6162692898216a08bf4d434b872fa2297b3d54ef907f52a6b3359e1b95ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c7fdb580028a27c01dc89a5e49b98b5dd5b58f2a2329747301e2f003c53213b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "51e7c6a670ed97fa7761418b243e348cd605b66a32984ebcd9d6498cecee8cf9"
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
