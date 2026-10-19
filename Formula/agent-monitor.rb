class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.393.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b4561ec1d0285f05fc8cd033fd6e9fc637f83df78c43c04436457e38d69ecb3a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "610860c1f66fce012b897f24d3a514e760704a4065a823b264b04913d69c9058"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c2146ddfe46bdd28a8013219328d1e61e0a1de5952d6a134231c587b1629031a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c939f1a4f504ab29616def2930eabd718b7b078b42e5a17c17a8ed310f48d0f8"
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
