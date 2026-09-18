class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.276.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a32f1ae464e34f70cedd7a7a52214a5d6f985291405de8e6892ff2fe913253ce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "62ef2fce400f42b2751f733740b4501f99785e50df50ec80759c5187beac4914"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "68b01ba930651946a964ed776e8adc8abedaeac744889251e48c47396bc27db4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a66b7244704c8f9ceb260478ed0c0f099a15df9a01adbd2bb0beda5c5a5ade6c"
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
