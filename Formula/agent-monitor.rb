class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.336.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "42f957a8c076e9f2a29a78d4c68111beb2a2014200b7da271a665ec0455c4eaf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fa27dc592c28becb7684cd6f3ee15d4b29d9c6b45c40470c2963e8f9572add13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fd45c370f261b5ec98aadde789173fa825daf4bd90a6515f8393e27dfb7bdcda"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a369cfaeca63fbbe0bb7a46b38d1052eee25739c998fae350f5c69ac47606e59"
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
