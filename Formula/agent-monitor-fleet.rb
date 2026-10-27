class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.434.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f7864bb7c2818744d13ddee63e2abfde896f7151cfcb6761bdb342e91ce6e8f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6eefc0719380acc7841090083ae7ba67749a5c90011b8e6e7c4502a90ded56f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "60ff7d8ec91d327b1b8c858a3b59b2dda0c7ffb9ae06c080de59c0652cc0bd57"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "12b22fea0680fd9c1881d58804c0522501bd2dc9ebc09846bddccb3a27574401"
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
