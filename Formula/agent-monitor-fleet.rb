class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.330.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "240e0506ce9f4b6f77fb8b570e04407a9ec4758d8ef89216d1bc0d4ca76f38df"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "29834991f7ff510e98bf31b0f9aa89d2871466795cab0df18702fe07ae7db908"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c7c202b88ee9ed47207b325a1748674dc0ab339c128d670bbf111367412bd63"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97f3726ca894de5d387da18cf76f19114de28a1377fa5b35fe420c780c237d05"
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
