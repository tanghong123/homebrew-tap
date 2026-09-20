class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.290.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9b3b13b06a2122afcba265495388d0d328faac6fca6b4dde3798899dd628e072"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f34dfb94595b0df7d866ae3f02d0a179bbc27a9046ac17f5eafdb8cd52f8f68b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "32f96f6c52dcab9d475000f7b7ab390dc4710b20858cb2a4cf688e7a89ced0e6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.290.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aceaf1a4850608b2b85373313409aa467684ccf364a74fb2b3f19be6cbd959a2"
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
