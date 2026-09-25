class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.302.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4dcc42e4078d06b9f7e4cfde755d37c2f13824bcc2c3738690ed50b330201114"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "01485f0e7e540cfce3be8a73c21031eb11774f2d579ecf1dcbdcfd360ab0d347"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72f277282d788063b9ffdb0d7163087c162230baae23fe51b360bec035097215"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8cc04b2c2a04cba3336c436b559f07ab844000e15807aa2017e81dc3e8e73722"
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
