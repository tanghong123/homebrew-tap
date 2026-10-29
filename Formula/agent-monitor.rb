class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.444.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2a69f6a3fd5df3d5432d8a2bad02813e2dd10d8d163b48fffdc9b355b9c1c32b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d6772b28cc0d3d776fab585547bb21980421e946fb447515e209c63195dc5492"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f2c543727c94630c6d57663eca89877843922fa3dcbba835f5681f447d437119"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.444.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a00c54e759c1dfca34314b2ffdf89d7b1cee89dca634e2502885ec52b01501a8"
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
