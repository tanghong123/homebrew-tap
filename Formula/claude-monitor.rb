class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.72.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ebb145e42b7d741cf5210f3bd2e56715f181d5b2840c7e5a96be77225e26a0f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "11795fa0b8a55101da39566a72466ce906d245bd271cd6790febb74f4fc843f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "466d6fe7241943b2f9906abd68efeb0257bc71caf28158c6ec2fd59265faf830"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6b000fc2b3f04b0a78569ea7781c8a3e0dda8f4ea424e7d80fdbf94495650c7"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
