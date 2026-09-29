class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.330.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a9c4f780490d69d9570b85c7f533995a0a4988e10c9778db40d2677bfdb3f06b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2df5d97fbcb40b3927b3a90dc69d5fa533c34b2b1a753e32fa13610ae9948559"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3a6883765f756e203eea46fc26bee057a37de7734e407872d672d529a1db518d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f8f712ae83748f8906bd423108ee7b292e1bac37469111f4f06fc17ec8cba275"
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
