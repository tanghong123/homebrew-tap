class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.269.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3e4b8df6972aa4f92022d3efc32e2d1f478cb90a3a35ea56a2325b1b97f048cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "877da4e586190cb01670419e3461b6256300cf8699e4b738e2f50e4f0d007754"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4b8519281eb4f096ce93b0815d244634b9bca9f82ad4de1b706e0971cf850ee0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a1df6352d1777198024d4912fc10ce6b68e69baa6d4b2b40ff15216ddcca8811"
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
