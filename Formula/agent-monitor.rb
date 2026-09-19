class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.282.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "56c73b50f52d32d7c3e6000e0eced6744a23a2d956beb7ff23396913dc98d9c4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6ab1ed812e0cf141062dd968bbe49f670d08ecb183795b9759ccf40b206de4a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "530a4c5a276e810c633b256b514c94747ee58e9bb1352a93c9dc40876a4105c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50511365357325dd00456f035feebff5c1bbdbdf0ea9ba47a75e79d404c11c21"
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
