class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.534.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "149efda8798934e77bb077625c15d1e23c2bc9ee92a73b65aa6bfc829464795b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0beb4e72d156e442f6ba29cfa6fdda2138cd33a266a6674395ac8f6c2453d9f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d7b9863043db13c3ae4d3e28d060cdbf17814430c1432877ea5e5548d840927"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76406bd6541d15cd4c91c5440dd9dba0a12427ce0aacc0a15cef85037e9173e8"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
