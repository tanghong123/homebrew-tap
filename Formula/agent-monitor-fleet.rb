class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.241.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d588e95ffd475a6f637897411994e927e920dda5e18887a3fdd9a6690d992b6d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "cb4cfb797bc09e7e742ab46ed242c8cc004186626e85d84f276ae0ea721542eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d2ef69f033b7fd06455f7544ff4465d0cbfb39c34d3977264f04c133039fdbf2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.241.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0298b6ac47e262593cdfb88bdb9e48d328ace77ae28f3657130b0e928c5c446a"
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
