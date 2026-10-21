class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.401.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "565b3ae2c61bfee857b315379a38db77206604e8834c87f046388c62c9ac565a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "42aa2ffd4ba24830e49730319c065cd953fc42b31aabc00b17452cda2484f370"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0a54b4db08b798062820886e4dd84407508f9ef9a6d05f2f29c48aa612d1ff9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.401.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "49c0b97b8187b977e7fccef90b9b7582568c60e444c877bdf3f85f21903ebdfb"
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
