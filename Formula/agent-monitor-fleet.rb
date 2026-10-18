class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.390.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "65ecf327f857c55e1d9650ca088d321f897f7148f8ffdcaed0e8aff78f204858"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fb5cf73536d34d4d0a82fe912472c893e56c3016366d0ee2ac18f4415c6453de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eca684328f220a2ecd9d31ba752717c91bb8dc98f46d0152be61447f7481cc39"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a22d8d0d2cceec36e0e498e5ceaaa6be60c5f0f050df5ff5a9a0c8d423bdd796"
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
