class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.257.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "46d18e5fa54e530b595b09899492c23167ab012c5a14d63353797b4ec8e6f14d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "769a0f256254140c68166b358d292e7adc4022ba6db7a81a10b838f21c960c76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fdf0f63f99129cf1f9ae9ba8d203bc82bed23bd04c5d6d457d3bdc88a68f2af8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13f061e3114d20d3bd4fab8a603ac53b67b33d80f83ede86bba712dc7b422b73"
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
