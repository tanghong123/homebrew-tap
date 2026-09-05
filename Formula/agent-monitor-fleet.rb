class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.186.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7d8ef29d7afc202101a428c10b09b3b9f9bc57b5897e23eccfcde1f33e08b38d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3b7ea8ccbb9ba40701d5573dfb574defbfdee9f1dd932c047a194f42111f66aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "efe05bc8625df2955e6ae029abcf264d2d2fbf7a00b885b312f0fcf3d19db5c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f26c325ddbc7029a853f1011e16b016f4e0e12a114e078148b42133460b67bdf"
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
