class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.471.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3a5f26ecb8330f3f7f47d88f906437bfa2f3eb2ba6a4da61ff18e4a3b65cea0e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0be280117235f8b652865fd5750fc261597a95e730b7eabc1fba04c78d1858f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9197eaa2cbe78991edc04c55bc478bf3b4ef0004cbbaed1c1323014185ead035"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3577a5430409d3f9f862636429e765356dd37b7787d64ae382492cc4eb567713"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
