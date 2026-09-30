class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.336.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0024a08fd5be7b7bef70b85f8656df70cc73a9b22c54d190cc3e4d0ccd4a27a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5d9295655c684755c39ea48f0e264f84d0f8b28a5bf35eb8dc167fb4d3daf999"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09c0ec4fd9c33aa05aa875f62b0130cbdbb0b8fae9ddfd56ef81370379b2dea1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2ef7852516d84cb232bfe34e71a4ab9dae58a0beb14b957430b1dbc3c1854fe6"
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
