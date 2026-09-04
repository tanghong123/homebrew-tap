class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.153.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "eda5b9183e7358657199082b914bcb407f7b93e7d81133f3222a272154501f5d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "86fb980d6fa059141c758b17704a65a09aa37f3f1db9cf6ba5261ce362398581"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13f20eb9e52475ce561ab9b1a34577fe7f3bba16bbbf83d16978fe2874d64f9d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c23aea89c0fa32a21622b576a836b303ff2a26812674b2649dc560590da07cf6"
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
