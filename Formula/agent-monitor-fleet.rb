class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.523.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6e1b6bd9679cfc9fb2638b1ce65bceb5f83dea435cf60591e14a9ea395fa35de"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "828468b1420bddf76da1a5806c2220acde45f0d63bfd0f702939c9284e40226a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e42b4e6e3076904cdde457440cc94fdc6de561d99450d159ee85c6fc8328811c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5de26845d9a04b57e5486f86258931eafb0a2980ceadcbe04949dcf23758bc64"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
