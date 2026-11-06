class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.478.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "277831c59c14c2d1d4d746451299cdbc954fc79143a543ea4ed481f8b8ea2ad9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4dd077b14c1bc5a16894e392bda240700fe0709ab8d5e7790ca7e2ed4fcf39ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6f7a77dd6b713ee11d4a09ee9f99a6e7da23236daf22d2f19cace9afaf860f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "38832095e4c82a4c979129f5800e03b56ea01208a4afcb345b49cc0642aae324"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
