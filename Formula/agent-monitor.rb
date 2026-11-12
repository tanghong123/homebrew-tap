class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.515.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6de92bb6bb8ba0d90c422091ba8e946f1cc127ea3fde91a51098e23ede69b65c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5e4f92905614261fb3d0da4c07a0df646751be56b4fdd5e902a03841bfe09c9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "74d603c698812239fd7444bea132b187ffcc51fead5e39943de684bef34a3f00"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec44c1f433d02388964cce681b2d54b6514bf42f2011347c6dcd71375e85315f"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
