class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.426.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9c968ced3b30c3c24ead1f99c37a8959b3715fb6ffd05dc1f29300e9cc25f5a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6cbd66cfecba92a1ccbfd9a110dc05209404f3867d262e2580daa5c9c8bf3bea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "632ae3ba226ec56d895e6488306a1b3dc2f62514d77b1ce5d0d9ffc83dd8adb5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa47bf491a5f60fb4860e5cc0ee63883aaf478f7345ac0da682a8b43bea19a78"
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
