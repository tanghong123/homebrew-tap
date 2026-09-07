class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.221.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "742e5d8ca289e8bef1a00352d0a8f3d755d58f2e52c3619024dbc5c375cafae4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "73120562405a2bef24aab7d6b960d582cf7ce451020a0236183a7282349a8ac6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a56f6a9546fe6c1c9b8c08825d352b82631a3124204c824d7b7ad24e7fb426e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "655b01f65ed0dcde5abb640382e5a0a47be6e027c0d91b6fa6d94da21c27bc53"
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
