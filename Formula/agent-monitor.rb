class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.565.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a4a3ddda2a9ddccba824e169a03760518e99e71f68cd664a16f59b108cbba534"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1b734ea8675b6360fe0567bff7794aad828312148990fc3f02967235b187b261"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "81865078fbd84e2da7e20d92da6f8699a020e1c4b69ec86fe41877732eb382e6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d4e6bad6cccc4da5e451e96a102c5f41676066baf705917458327ce631834e4b"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
