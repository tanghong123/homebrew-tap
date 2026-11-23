class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.555.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "162234fade7a6528963348ef459683db78a96372f61856e187502109a5a11487"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d61dd0d768235b25a77034eeb02e837fef7bad2355925fb2a4181fa11f7fba43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "60aca07fbf429b64597624a0d94014ca07f744626880d8668ce1e9fe00822486"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ee1e845b71d96d12816afb46a6c08ecdfdb9e9c19dce57386728072f5f8a952f"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
