class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.300.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "310d165dcccf45051ebcdcd83f47e6376f0ee1962cf88bf59c7ff62a1e6430cd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0cbc9e5f49fe087237290bfcaa52aed8bce28d20d71b9a3be25af4e39d4b648b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ba4f6cae27acb30d4c19b95c4aa8f45569c79d0cd99f3e3505da9baaf923cc8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "352a7ce2b92cdf1d7b2ed491de9af780141cd051af3cac55c21aef31b3a4cdf7"
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
