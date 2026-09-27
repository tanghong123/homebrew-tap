class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.317.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "552509ce2618ae20cd6426fc12f80f658cf54976d068474b6948d8a7343325a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3b1169efd5c43cab8038d811e1f9379e8f273a230be43573bdee80f2667d8cd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed625851557caf551ea97eee9557a3cb3859f40b630a2f4be2950e52a7a86656"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fca393a13921240e920d11123f6fb1f9088d151c736bea44f53059704b5bac77"
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
