class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.119.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2c1727ba4217a5af2e7d4802670386ab022b48a0e4cd442cf075ef463985a785"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8abd43c3780bb7c851598681ced479c3ddc4d3fa44d4a77781e1dc9791cddfd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d1e36f0bcbb62d2240a0fa60c7fa22405d484b2d654112558d74076b865c3d1a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "22bb49d03905d1fdb51782fb3aeab41457e5d49b3cb49b32da2ee5e71499e861"
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
