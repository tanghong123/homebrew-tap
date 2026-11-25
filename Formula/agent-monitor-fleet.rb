class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.564.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d19160e03221011bdc38967b72dfb80447574ccecb2030a0be819fcdd645d525"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8b7749e3ec7e3d9998c21f05a890fe627aa14579433cd60f5c158a77b4583840"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7bb8f3ede2a4125c5d8be436eed9117598ece7131a02afc49747f77c65731f9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e1869a237ca0adbb159ab3c4c6e2205626b5abeb39932d9605fb0cd8f3d6cb5"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
