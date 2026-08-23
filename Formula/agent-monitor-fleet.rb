class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7c85bf13212fd26f040c5209d8ab3d2669f8175f87ec95ce126c84f9eeb735fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0a98c4cfa25f223886319fffc7074ba4b39edf391683891d840ea27d115aee85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "97d7b3d7beaee40de5caea7440e3d35241a6e2144bb13c168212f7a21b85be76"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08416b25794a6f0988686260aa54a59f2dc60f7669139469752a3de6415cc6ed"
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
