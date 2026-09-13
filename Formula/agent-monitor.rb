class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.267.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "279104086c53090bcf10ed5db0c66ba34200549b9acbdde3db1c5071ce822697"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0519a0b744b94d2cca7aa5ad766d0f3e62075080b32c8bd787e87914496dc830"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "19eb1a16127f295834e4b6909dddd6b18a61fd5023c7a1a8d7feaf583aba1b8f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da4760e90806787b9ec23a20c17ef0d6cacff2b6c45983c167b341eaf79769a6"
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
