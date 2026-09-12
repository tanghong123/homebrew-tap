class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.262.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "49502e3b58403ff7162c94361c630a15d9f3093c56f85f2e0ad2bbc5d546c843"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ad832573f7dddeec0d45c6f13af107ac6613c71680cd6fceeaef093cb793bf8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d750839e61f04430154f0e019bc0766cb01f093ffd17ba3bb5ed3ec2fe940b1c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b80717bc3cddd6e2fc7f42f6c27d11d5647dca9167fdf5af8b852fff96f4384e"
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
