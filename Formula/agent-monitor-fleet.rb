class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.238.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e6b57f54f4245a8e82c463033f718eeb2df71ffc425f3dab8fac8d6c0049cf78"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6144a1e5a2be0630e081bd6b655ac557cb14036cd7df2716dc0e11f3b587ee2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6b9ddff4c65fbf39e3389ee8d1e21b177079de5c49768081b0b94997438f3018"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fee627e1e2330f2cd33365917ee75eb3c625b546371babafd82858c956f6dfd6"
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
