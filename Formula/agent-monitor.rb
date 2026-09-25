class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.306.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "64800084d7237396d81ea6e448a1b8aa875af21128ed82a66a931915d553b708"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a5d4852fc64b07a16fba86dc6bfb92099c8aa4571f61df0c5ea618a852e4d4d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0db9595dd5e6cc02d8b6f221d9d2b67efa1c4195142278ac45d3d319ca720e1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.306.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c0096842765be59936a4772bdcebf66efa4552f53dde4964d3a81a04a33ff05b"
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
