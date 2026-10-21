class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.402.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d714769094c873869839a8a185e2b0a4d87792e54af33eac470ca58914fa7172"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f60a9ac629342f9a17283a853be31c83ed58edcd6f2643924c9dbcc4263fc660"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd7fb53333c547a2df331a598f2a55c16f1f0288e4c32fd5eb687eb689701987"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f74335b3f8724b0f6bad0bc5d0509efb144794d801193f963f3d3b063e426bf"
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
