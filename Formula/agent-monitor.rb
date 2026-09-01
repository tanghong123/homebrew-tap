class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.127.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "60b09e78aa8b42e47174e8d4c772fde87437d82f9e55583e247af8437e4cfc1d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "43bb927e2c2a1d345184ca3ea1b4c0f5b19341163308bd420aa2d67a160f0fce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b1f98cf9297c3c558c74b548f201eda140bbd636ba52390031bfddec19927f15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74177876bb0dc7b169d6d4992fc5df60eb8bc38f9cdba2a94cb4fac54da2767a"
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
