class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.311.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2c15f12874cf000da455563f2fd57e68eab3f0660a8c3b84015c3f24bf0f7035"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "40595f35ac212fd3f6d6ee67a338aba17b7b4ff3e43dfb12e302243ba4785148"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dda52295026c61e92b3a853c446001c928a2a5dfd5292279b0bded4845fd6677"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f2e51b77a8d555bb14ee72db3852e603399d8760d00eb3eb641020c6912f203"
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
