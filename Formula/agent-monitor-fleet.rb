class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.489.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "31ec6ec979887f67e3d9c22cb55d0cc1c010b99d8806111a1f893ccd9f298dc0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "30dc2620dd7ed08cf72185a97a5a3233aa2017b0d83c6101bbbc7768b220bb6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c7dc658f4087f62b7b5c8fcf865acdd3c5cd35c2e1a54c27135f130cedbac14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "faa059e669d1505d1b08f5b3d7f30d33e2278f49750c485f59443bfdc8cdd6f3"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
