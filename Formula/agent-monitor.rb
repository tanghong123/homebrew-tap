class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.456.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "566d856d1c90d54c0011e971f0d583463cfecd1402d1213b6dd69927ae088b52"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bf98297efb93725e28c8e016c385c1cdd8cc909ed327cafd4ff018375c43a1bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d1dc956808b61cdc1b42b890a4cb2d58110d3430e6dbeba00b62fcc6d760f1d2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "96596ebf07b5170293f24a69eedfe48ed28041794720a6fc074126ffe6a44610"
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
