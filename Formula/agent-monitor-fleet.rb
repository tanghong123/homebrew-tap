class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.360.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "88ee24709bed5b742e3ad100eaac0d33523e9a7727d98186ecea386aa831d748"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2be5bcb095f73f9fd0f4dd35666721f9d696f60bf8f73de539bc73712f7c2e7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9678186ebc79e8843eb7c17b638bc82da775f72647d2b16d69c8a7f64a7ba7fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e9882ad236c0cc6086849ea51d3e1e4f73d1d97ca597d5323bcd3860fb777782"
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
