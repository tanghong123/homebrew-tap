class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.378.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "112ee9670def389ed098767cc778a2f769706ed3c81c73bc5f369cb1d59e34d6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "888153494c067a838237228ab73026455e154f8f890a12f4c5175546c97dbc4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e42c0a1165eed017888e49cec350369ce0ee0b675629af5b176c653ffd8d6825"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "215bb81b31b9371d64b37828d4e2fbce397ebe29ca5c05926ac1b14073e403e4"
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
