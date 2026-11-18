class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.535.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f5bdcfc88940ec37deaad504294d21c26611bd3c77ec9603dfa81f3ff884e0d5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "529cca5873bf458396b878d28a9bb421431dadfaccdacbd745dd51d24a2befa4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f63db67949815b57dc589c989aab30ec2f8e0d83210ee6d6270b8046ee4d5a39"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "167cef87eb85e5f11dc097ec0090c85d54321a21b3ffe38b90718bf38e87156f"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
