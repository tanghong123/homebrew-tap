class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.462.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3f713bfa7b29740cf47a5608ddea1eda5e6cce6450a2916c19d52ebf7db7bf66"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9437fc84f2ae1b186a6d03c55cfea8002031fa5ec6323ae846824626db751703"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "71e9de5fd1859538a964f4973412426b11eca2cd41ea22624f21a3d071539757"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82f99e4609583e780d0c3b950af934da55ae38887fd5f2eb2448e192a5bdf564"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
