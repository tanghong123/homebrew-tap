class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.195.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c8297c253282773e001525cafcb5e699b1896232e416c75a736de78cc1018c85"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e756fc0c79e11938149a19ae20a5360d6af0d975925cce510d5e964028f3266a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "476687a4b6a19676099ae84a9bdf77aaef4ecef003ad5923ac021e81dd686b88"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "01dc49210cbe016c4e962a1d8c2cbc6d8b505f562cf6e06743996114ccf3014f"
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
