class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.430.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "5c9e77f71e0506943e84f99c69fda175fcb12731a388529b19bb167e7a41aa26"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f1ce6ad8ea3579979cd81647e938c364b56a4445094bc12d93eb967cf1dbae58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5976f7bfb103d56d3d4b86733a4e5dbda83a9108c78841020eaabd273cd5c6cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "998b9503dec67924a624f4ccf22be288a95a7b88c82f5fdaf4e1b295a22f12f8"
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
