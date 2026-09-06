class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.212.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0ccbeb009aebd252f4ad20401f2402bd68fc3ac851103bc6fa4d803f0811b7f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "31ce36a90fb473c6788894a1c9cf778acfb6ed7caedf109da915245a79394a44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "412ef2a84c5c9c83836320a3c2246f8edf973e98b2036b64db0f2ab98d70e1d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c2d3d41aad02c44cfd6d208000f73c586f1d52a58843c9580e449659834bce7f"
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
