class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.283.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f3ef276abd2cd179b7a536037ac0cc4906449f7d3840971673ebe773f3c3b602"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "654f5066a70bf1a640800a326392db94ca4a39fc903bc064deb227437671fd1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3f68b5d9b364677d4f92c6a80a63f5c04243a3f708541acbda8e4ed2dcc02bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d82aeefcc82bc8f4e954c43c8b4413e0a75e67d14c6e9cae3b760f524e8cbdc7"
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
