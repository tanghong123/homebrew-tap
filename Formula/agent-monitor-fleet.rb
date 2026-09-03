class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.149.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b7d7208691ccff5890bf714f5865f838f13b9813f2b19726bec7d9eb761313e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d6ca9f2909618cb3fa89609ac214c862ac93fb2942a758c79b48e0bc30c5c737"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3785de98dcc6522b0eaa02e990e061678e4e1a4a67f511bc40911b04b5760eb2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "51c8ab1c1099c66573712dd9bb21e2a32d13a10269b1e75000f64699df5a03be"
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
