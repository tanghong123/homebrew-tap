class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.110.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "725a8bf4791f3cadc628f389d20511e72b116ba0863fada2e902c93d491bbb8b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d209b64b072f0a8716c77ae5e6fde9db60fead5492c3eed5b9d47f0545cb1849"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93241ccfa552e22a7b424901f647f938c173b520264beac9321bb02706e90937"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b59439b7141185288d1d1614e2f4930d775b486b9aacc530de35209da07893d5"
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
