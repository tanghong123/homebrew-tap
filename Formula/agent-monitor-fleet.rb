class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.500.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c1a6c8fb931615a6e4e00f34f5f9ec9a946cef709c13101fa18fb75309962385"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bd1a3967b05528ebff9519bc5d4e68379f5c3f7a4ee675c91b823171fe8ecd65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c72ca7930ad52101da5e7cb413ad20e5d4b4ad77cdfdfd058cb036f4a8babec4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.500.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0ba44506e857ed52694985c14d5a703740ccdb07827b6f23c94114c4fa713858"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
