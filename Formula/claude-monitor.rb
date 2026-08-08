class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e51468a11faedbf00415f8d00468804cdbe9bcfd40e887708075249ebe06e5b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "716655323a0259461cc65f24dd5f920def47e1ba0948fcdc9e823029af7af7dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d4d6ea0df62fbeaa740feb56bfeb32a8b28581f08f9aeaf0d16612d1261dd3a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "09ecab70ee787b5156eb3784e45a5e94f1ef6596d6e806ee3c273269e447c2c0"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
