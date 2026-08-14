class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.71.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "86f579ba994a078c82510b646abd476d92b86e935de90dd7325bed1ee4ec8197"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1938b4275c2ca6ffe53998bd3996b3c9aa4db342efa8143028c540a6918b5acd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cf98f7f033488bf19b67f717529ce74e7a60c02914bdb98b2bc62a344b9fedc3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5fd6eb1fa7ee6e6ebc42cfd230cbd74c4d4e2b7d4da524e5cf420327215c7ac5"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
