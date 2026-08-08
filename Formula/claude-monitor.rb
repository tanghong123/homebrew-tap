class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.14"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "87bd5eaca311816e09f2df443aa6383ae065e04328bd54eaeca2872a53617463"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cd0f561b1fd2f89d614ecf0097c46ce26fc26f3a564bf8ce66be2ce85d376b73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "966c31071baf9874d96f5256ec414c7b6a13d20e0e7a2b11449eaf90b6285689"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a302837433d92bb5aab74d6d611bcdcf4a390b4305f26317dfc4040b998fd2a0"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
