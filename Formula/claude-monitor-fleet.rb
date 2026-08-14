class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1de358a4d47789cf94d39b92c05d0d52359c175b857ca7fc1f18df3516f40739"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d38e3b7092b427895bef4ddfb509b9de860ff5bea0f09617c085058071745c23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a3a484ffc6f4d8814d9d4906bf63820b27c690bdf8018820ed556fc6f08dda0e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7afd1ba836b587e176720f8a6fd554799e741e589c0c2be3df6b28c2c6420e69"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
