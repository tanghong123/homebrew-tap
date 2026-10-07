class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.357.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7980d6ebe208718c131076b22c6df5f5aa9218c66fe4efa4235f3d529fb3a00f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4716e6ed4c004b8986e88af35934aa07805bc45d63237808d1abb28ef967b5d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b13b15cb293e992a809b6a4c0e1a5c6cb5596752cc46514539b4cfb36a7fc57b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89028aed20448c96246b52bdec3a219e58c3f526f4899ad05c5cfeae7e94d4fe"
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
