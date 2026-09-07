class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.220.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c55822701061f9400e792c24d59b54260a45859367fa682ab7378710c9b57c7f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c3cfa66826e5e4519c3497513071b6ee94b2ce90903147a4a5e0c2d8053ebd7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "65f54c6cbffe4f8a2855f6670db2c5d2513b4c329d3d8672e09648901ff603c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e00f86ebd6721c2ca73bd56037028297392ee76e8c4fe3a110440074b1776c12"
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
