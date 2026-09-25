class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.305.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "14f55b8f9bebe8f5148f2c2818368da179d549039dff3760aecbfd5666ba58fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "016cbde3c4da1c66a01549d2228bf77ac47b74e950eb055b85c023565321e5d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5705f90ef80f24b298ea5d04b1102b7f2edd8316a092cfa64cd803f7a8e6866"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66ec6a3e6bc35e02befc21cf848c5b9b711ed038e34b5c9166c4b9fdacc9357a"
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
