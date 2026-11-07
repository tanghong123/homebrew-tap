class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.488.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "771e3a3e4d825e42a0f6ec438dd82bcfd60e97423cf4aa200d9e4d51523f37db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5a800c172b9fb028503b5c763cb6da52731ac27d8b4218bba9a29e6551db57d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e26ea211ae49189516c8c4bf07c6a69d9e1213a7f2b315a8263482ca624dfa2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1645381eaf023309c3b4c89e6b6b854cb7070e319dd943f30bb0320ee8b476c4"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
