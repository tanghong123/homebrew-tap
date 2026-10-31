class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.457.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6d32c243591047028bca05833f0a1d105c4eba6ef3888e2e898774fa730d61b1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d282991175a0e9e7d12353feac6bb977730f666671a74158ca9436ce02cb109e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "62d23cec6f293257d625e4afeb2b480587b913e531218c2ef2d6a516e87226f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "871d941622d7f210a741e2dec3a684b99d625951cf2e96be91c34dec506962c8"
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
