class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.556.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "de331b36bcc57cd2bb3c5e451aada8d23cff4e9b2991a3128c3362610dc3ea2d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "62458adbf254a713ae64241d74367595ddb0fd991b41003e604b482e5b9b525b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "820f916252f8675cd7f5740a34d47b7065181f8dbb6ac7e76b0ea0548429fc3b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.556.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d5ff24a448cdd5be1b910fe81f62bc8c1d28238c546c8306a746c0ddb143a038"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
