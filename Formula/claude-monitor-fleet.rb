class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b48adf41f3819c927c244293d9c19e82bf47d2229765af2533cae7308d820479"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "90ae66a7133d921387a526de6e8c1c8967ae8f8e66e8346c770f8482a3c117fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a5230a7ba4937c6afdc067debcdc54435bb0b222980a927ab40dfc2e4e62b39a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e32339c04d25fa350e0adc9a653af45b975fccd3d718a8d3516110f8e0278a4"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
