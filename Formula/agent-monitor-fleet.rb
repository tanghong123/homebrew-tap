class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.560.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b689cd4cfe9f3e340bc6ce92ed8dfddeffd9dd5cf9a12b1d69f3b86c0f107106"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5487ad6ca787d82f6b1dc993acf85b31e1981ffb71d77f19e981f8ab2ab959d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "56c6d74516413a5333eb19385952a3b210217b52c7bc19336052a0acb9650773"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d58848f241e068ce5971859684d01b7fb883213aec3464e9848585ffa8470a4"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
