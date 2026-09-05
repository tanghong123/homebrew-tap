class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.205.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "79ee178a1078e5ad7f90386b8e35b7cb1da177656bc7f661dff8b8f72d95a3a2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9265a95d9edbd5e98bd529c80104fe64ab5b54222015b610fa24e9c97cc6b814"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c71a1fdf1d5e4325f0999b3641d8c65cd74c94cebdbad73d06627d4704f382c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b5324331882ef22261db2e77038354912626f87e1e00ccd849c4308d99862e0"
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
