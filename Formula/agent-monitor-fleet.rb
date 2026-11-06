class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.477.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f22b5c84cc90211412c5e8392fffa1f4f016b5699932583c029cb2cc3c3fe68a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2cbfe68ad5e0e191e1c729117e2709af993fa7d0f93ffa19e125dd536ca4af60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90ee6f7b1664fc4eb92249f090a7c108fed6ec6ffb67557039d06cb532af9d2a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.477.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d28f2921004ba04c859b239d81addc441987f4b2548df7c5725569a16581033"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
