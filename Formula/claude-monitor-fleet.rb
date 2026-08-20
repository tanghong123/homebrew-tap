class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2fe3dedbb0dfb04257eca4cf6d1facc926199b418e0e230389a9c6c5dcecb629"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e864920777da7e0455fccac8d57059d8a1020ae6a02ca7b541ff618158a46315"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03d3c67e5f902ec1585400cfba2cc16fb573b2340c02fee17a2b25274693f2a2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.1/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f310f804ee1babe2b73e63314fad117de765b6ea3e0369b64720cf2204f2aa02"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
