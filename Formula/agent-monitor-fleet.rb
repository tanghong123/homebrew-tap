class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.354.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9a4e8b4f177764061c5f740027b9e2a87d977f53273d9dfa5818a5b7f74df211"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0a060620dc5ef4bb84d8a7b42c733502ef86267f9689b0bf65411e2c3733cba7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "608fbcc50124fdab8b9d0bb5345178a3999fd27a1d843834f3088735c29d55e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.354.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f16c184eebd86d827b736730906a3693d376d26915ac2c30ff024ef5c627d85"
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
