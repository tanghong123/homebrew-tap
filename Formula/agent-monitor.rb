class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.265.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a048002859ca85a1c6f1eff601480873d08ed8cedf6bc9587122116531eb1b80"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d7765b90d1db8fe333677e13eb0d916fc0d9a8e6936c0d851b56303c0ae22644"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "492568ddcd8d6aa16f165c7696f289b9b6ed910d04fe994ba298fedd0748bfad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c3f34a5c7f773ab2f33a9b6970436d16ba433c71b06860edf2a328e112fbbe76"
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
