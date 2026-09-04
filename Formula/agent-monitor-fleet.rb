class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.172.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bdbce2de1f126e0d2b12044d49d49d12e6eb9017c583d249932f928c16a6338f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3b6d83e1f198e9aaeacebc40fca413599691c13eae03abeba35337d7b5e2dfba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4387de57e7553b9cf83bf4e35d9e32b7507054770c67efdd7f6e95ada87523ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e4cf46cf6cb18cc3725d5dca9266c63a1f103084e0e93e8ae06ce1e73596bbf5"
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
