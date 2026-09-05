class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.202.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "020d222a9336bf00fe27ed5ce34d11471085b17a73cbbed98872692635ebf536"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2e015bd6c7643680ae1d91e1aa6c4ad13b2dc8145554db12e37c26aadafa2ac4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3a3ffddf40224f579e1794debae26a5ffd44e0752c857a5cd38d2da0168f96a7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3193fc569c5241397951c4a48c9e5dd4e2f9fe0bf2cbde7cd7ee6c1b14d7e800"
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
