class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.359.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7d7ecd9b45b5b5bd67743c284a0f007d2918b8909a8636d3b7881cd047616bd2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "774ea2b4b9107c5ec9670bf1d7551cc8f3e76fdf0e7b0db025ff87e70bd0ecd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "57a9d72bacf49e71e0b83a4295aa293810751edd0151642f67d9d76018b2765f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.359.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d52ad2c1a710830aae8710d29d6f6370435f2726c90e20af34ce398b2e4f26a"
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
