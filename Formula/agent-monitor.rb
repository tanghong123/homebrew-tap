class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.502.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6df6d79726544f5a36c9107628373f534b913e015a14b462ff531aede68fbb6d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f2c239fe300be9c7f3d340c3e5b5d60fc5945aa466f3504a0f132d77d04ae968"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9101919f5f39350c1c78a802fe4af6683fbea836478ce00e5c050e4247587544"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bdeeda21ef42e558be935b9830111ec7c0a7e2c307299682df871395b00f9caa"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
