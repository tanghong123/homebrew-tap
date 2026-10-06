class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.350.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b9e4cdb9107409400f00224d687936048bfdf313c44d89776cac50531f4ac995"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e66f647f624fe602fd7edd001e6d8aa0f3269d641289431cfc83893b00dff7a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b9464162197fbce3e5209075138a777ed5d0548053d3f07dd78aab535ec15fd4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8302cd3bbf1053981a22397fa6d7cfe555862281b60d7797f4878a321889d428"
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
