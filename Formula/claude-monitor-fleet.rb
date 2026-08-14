class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.77.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b24aa447c85467d935e008e91d20b079945fa76b3e6ae3f6931bf95bcb1113b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "dc514783a6cb00307bc18df3405bcad77e3090c9f55bb768cdd77fadd415d3b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e8acf957cd6028e93b226e80d486b33263fbd81646c74e4f52ca0b4d33c7452"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db8c17447efac5ab07c74542d3652185974c5e6d39b9ea983c73e50d115ac24a"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
