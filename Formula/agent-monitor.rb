class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.243.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c155802c4a9e012c833328a92c108bf7a448291e4f4c33fc3062dbd234987eae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b1a25d6aa511ecc3468ca350e9a7004c411ea5ea93fde4557973add1929f946f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93696404b9a044ccdf55e4eef476019e3bce0a4c5b82fa668641d7a2855a38ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5ffa026b548d1d71161c8b86ba1155d4fb15ee862afe0e5064af5928b65ed1c7"
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
