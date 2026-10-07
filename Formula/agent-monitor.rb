class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.356.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9bd2e31a26f543abc01804d3d5bceb13a73ca695366b39b56fee4bab2fb67393"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d6dc195e37e203069e1031a13d406b6fe2ba16af07ae9a167f4fd440e74dac52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "614586f2327e2e3b0e0498f426bf0e71606bd762a86a74bdf2fcec91736c298c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8e070418b55d1e20abbde076874687fcf8547546ab9d148ae86f2698a1bce09e"
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
