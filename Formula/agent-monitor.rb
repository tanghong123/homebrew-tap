class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f4609c4df2b4ac51e91638115d0737c72c96488351a8f38704453b10b77c3e2a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d806e65a5152b122b4bcfe3e303df2317578cb118af17add18853842414328e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "abb22f53b85bc24fe6ed2a212ab9e83f906127591b138818e8b3a29b812e738a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4fdf7a2228ed8e4013d9b620eca59a82db5050e48c543ab3e21e7d8d6384d623"
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
