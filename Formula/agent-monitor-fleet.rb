class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.450.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "68ebcf8484314830d544a8f8f29e2949c5cede4dcab142dedd52b506cde66541"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fbdf24b6acbbdf7f0d7c256bac71dffbc4a63b274548dbd1a6633e178b2c8b7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd2f22bf2ee5856e80ba4f46b968c974cc69aecec6bf3a696610bbaf1c12fc3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.450.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be1127ed170705a6aae7c9c353aa063803c177c5b624080024d7a0dd4daa928e"
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
