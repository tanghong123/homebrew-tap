class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.443.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8304fa5fbda977cf31d2243a4ba45bb50420159ef58b34bbbf435663cee5555b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "61572fa4ca45cda5c56f5f339c81cea507597aa317f19d4627c534358a3cbf66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f8aaafeb0a3e36b8f02f6effe7923ca86114adbece3ee60a7b3b8aa2ce5dd3a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6ffbd758375b1473c19bddc78157846747fa9cbe32e2ca4cd1faf49211d74ce"
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
