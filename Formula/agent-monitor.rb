class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.375.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7190317d582733104fcd9095b03e1ea19da391532cca71509117ab8a719228d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "00f019011c0e5f4f96e8ca37bad15714da5c06ca6ed4eed48eef0280eb3dfdab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "002bd694a4ce0b2875c0863994dfa49e11bbadeea850435bd2b502658d260b1b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17de494c1b9f97ca926e6e39c3cb22bc63cca9f7f42d2555a3f3ec98e2079552"
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
