class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.218.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "08e7e099f6b9597a72f5bb39da202761eed18ab25969db2e931ca0e881b3e482"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ff1ce0cb9c1800acc9ddeb52aaf5c1f550e25266312bf7faeda3fb9ad7ee08c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c62bfbda27b6ac667a0c40947bde1a11c6b723573464d8b1d7831f2eece6c46"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c4ba4e97fe15b99b309ee13425ca3f9a15b6b735a80335da35a4fd61df3e876"
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
