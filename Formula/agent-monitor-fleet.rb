class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.344.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0b1fbdee28917848c52d87f807b6b98d967a6609c8305462212cabd32c252d67"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d0d64d738184bae5bee2b278a8522875b6dce25d99eacde2cab1bc0c401b487f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98028469a7eec098a693003ab868b249bff148496d49a19996b1fa6e19c02e07"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e6355a758283b5d44f1276ce8c21cc336f111ce5393eba5b8f7a156de773cc9a"
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
