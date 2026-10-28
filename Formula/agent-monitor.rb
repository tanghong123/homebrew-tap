class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.439.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a5bada10f1849774543e82d043153527ec3500234e409bc32db6340c261fe239"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "02003770401a1a130b1c6d25bcf4d57dbf586d3715f80df6c26b5dcd6a31464a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a7c89b47ef0ce4edbda38d2aee80bd42e9f7507d1af64bb7638149f1b703984"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.439.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e9f786633b7a0ab69a5b1c57a2477bc49283d88cf937cd607ec51ab869eeeeb"
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
