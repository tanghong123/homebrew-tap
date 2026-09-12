class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.263.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "87bd05f773b055143a63ea19c34bbd56c835559b585c8b4daa126ef9b24af58c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "34a2a7371580a962925d0757a6f235f624fe939c57e26a2507a7296797d9607d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f3bcb74fbaafdda9ba0ea0f3924678a89ba96af41cb33f78ae106a075c90e1ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.263.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b3d8027e6654de5e59ee220671882f3662b465001f4a4cf62e6f45226b54ffb"
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
