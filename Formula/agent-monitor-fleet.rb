class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.548.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a1b5fef12859f8f236ca98fce7dda221cd617cde1f0a6add0d37d0cbe522103d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7647bbcab883eae042920a2b0e1b510c2785c0bbc89b75422622da74b84b2986"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ccd13f49b7b3646246a280ff71d554f77d04d1c735f7d87180886c43a9469927"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.548.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb71b0c25937a00bd919edf4c4efb9c8541c81d0d15c3a4d57bbfeeeec04f5f2"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
