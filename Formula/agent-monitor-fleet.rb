class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.521.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f8622ed1288b658c0b0a7c5eadab6d2a988e24031492d338d2888568fe9eb344"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "30183176eeecd4fd878f731489ca7a00cfd29e55d5b002cbaf0ce3717bc4c357"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "39dc359ac54cf1e997680aac6c2f49e50bac3a7fe19bb664b51c85febdbe36e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43f5f2258fa81f3bfd2a77ac9ea373946a17f7f0ef426a517e0701a6be1825ec"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
