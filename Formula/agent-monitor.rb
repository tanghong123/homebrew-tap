class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.540.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bb8ece831b663ab69f099776c672593ccc6f8f82752f97cfa18ac92ca05aedc9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f0c940937f2ac1110ca843b2ffefb97ebc1449794ce1bd1e04de51e82fc1bfb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ae22940070c32d94edbeae6f420025dec696f6e6051e368c6d61e4724fb03367"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "edbf1baffea0bf43060d742c26f4ca579be954b7dce54d98c39bae4a3f84b6f4"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
