class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.179.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "328085b620dde965bd86928a150a92e1f391088bf0063a995619e7b743694433"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3bfa3da052f87279171edbf3200a446c8b760d91bd3d5eb6f1e3cf5e731af8ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "97db4f1d0281ece2dc985c436fd9f5ead42cd81ebace81cb22c289d2e6ced643"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.179.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "536e561ae703808d7e74970593bb04f34459fb5ade9a3a57b7d23adf6efcd009"
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
