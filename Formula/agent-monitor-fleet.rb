class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.206.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e6237259aaea1576422c8aa38244439a15ff20818c0ddcf77795f2bbb0171de2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "783a1d42b5ff792e3e38f024beedfc1d5cd5be2240be14a490998c1ec34a1e66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d63f93a437ba29bd018ad236a9df461b5ffa0dac85ccb67b321f35a6f9465998"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d825de09fd19f50fac061d26fa09f9c72d06109beb04cd9b4f4a0ef857a80b15"
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
