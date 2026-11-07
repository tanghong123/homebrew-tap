class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.490.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "03a6abebee742c4688dd18c88cb4150c7841e21595cb2c71deffad0769be22c9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7a4e469f8c27cc3056888da11811988f5a892bfef5ab0b7f73012a3e08d95ba7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8a1ad23c7219104b16c25880ba66bc127274899ace5b1d38ba7dec09aadf1b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6f907828c2c84ae4ad085795c8bb68e8e302c336efc002751bb26972508c324c"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
