class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.398.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "77f4f79c0c909d0463a7fa680d6af8d0d190495fa0173df47a88e80352ba2c16"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "58f2390c7c11d0052eb472cddfb72516238239736752daa18974e11a536eb4d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3e11fabbb92351207cdc731ba993d0772f9353e6bb415002b2c2cdf9e3340373"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c4e4bbc14015bff727d4ec18104bbd8e40fed283e537fcb7df744d2d00ed24ae"
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
