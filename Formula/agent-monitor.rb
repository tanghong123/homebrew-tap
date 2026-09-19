class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.278.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ec71f6570ccb91b1d2455318628dd76c8e7f023000d603107df92787b9cdd1bf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0882c9f315f6786fa5c836b6a7fa83bc04d8d75749d72ee7b74bbca49409384a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54906c0bd5915863b3c0273f0500aeff66ec6cf21f7eaaeeee9512f7d1be5fd0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "279d1d52a115f8a9d296ef9663f6cecbaaf2a97f460812800a20a8c724fff10c"
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
