class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.142.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ed07958f96139ac450e18587f75151f962de6c546ea120e76b843c5d2208ebbc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d75865ac523e991b52eb19c676b5821b683e2ced6cb7687be2b601c706966bf4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b439ddf7b641bdf37d3ebc9a9145d658c11086752dd559081a6c4b0392f96b20"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5791ac78a1eae2e0593b3a9b713854aaf085854168fca7eabab9c56e76ff5ed2"
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
