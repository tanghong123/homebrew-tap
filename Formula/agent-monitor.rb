class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.256.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "01dca985043d6f97f48094d48fa12c174287f86b81223c4542f01c8ff03fc02d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "438270dd1981c0b95de0b241ac6c7babdd6c822a123bc1d98b8e1f7082abd7ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a6af6d1b58c4b2a07b5637c78833dff71d96256fc5d28efbe17f106f40218a32"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d323e18166d0f365723394b589c0da2f52a53f74692a38b1c4e1fd6e07135113"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
