class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.498.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6ffffa3a40fb1ccd9e08c885c1aa2bfeaf4da0b1fed384d734ee07e3fc3106b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bc622a9523e110591b1888976835c095d8b0c3dd8d6c1f5bc674e83a0d7aae55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff51e46d06ffa7d1c42ac66d2ceae73b5c5dee92badc24f34c67ad8f9615c1f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66d9f6adbf3efc5358fabe0e95905e75b61f82cdc27a6761cbb7beb2ada061c6"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
