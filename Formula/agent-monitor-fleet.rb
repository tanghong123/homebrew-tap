class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.514.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "74ac71636b6df1ce2bba7c0b31670b929809fec190aedf9583e516eb170b11ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1cd56d7542c20fba30dc38afcd50d01c97697cd97d5ba1c47dfc8e1271ce1e97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9fcee72c76c90aee9cc5ac3c9cf8fa5afca67b0c2827cb1578e6dc26dee3b105"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ac0e4a464b9781290e4edaf1b4b786a6851042bcd3e0067b133bfbdadb152e1"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
