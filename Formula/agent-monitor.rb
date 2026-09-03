class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.146.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4bb7a1e8055383784c08b1ea019b4a401525c6eabfd0622a61c20f998d04e0e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8110a91893bd30a909648c305ee4519a307c61fab5aca9c2fdb73d03d2b1f21a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e7af3fda30406c1dfd18eea4c2babe59248a3d8d82dbeb8f0500c728fb5a561a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "151cc5e959b9abf394ef05424217a4e4a5edfce3554d9343d049567d6a338fc7"
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
