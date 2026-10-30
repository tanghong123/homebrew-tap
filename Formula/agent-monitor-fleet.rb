class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.452.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bfc558dd993a638ab8ffb128328270c8773f9ac000346bb773b9746c7a4367a5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bf597aaad6839a700479fcfabb36d7d664b4b7eb230222e4038c03648dc04994"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6b5b20107c51b0acc3b7df7fab4c81ec683819f2fea1a76830c98b5f3c91d3c4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0790f7c7130cab0fb3b4d1a9059a1fcd3ab6604b4be9b5c308f82a7e24d1eb0a"
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
