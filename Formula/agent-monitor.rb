class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.215.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bd141dfa66ca842051186e0a1bdf5062cad94f4fbba128e89fbc7cf222327f1d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f27a7a2ed4bdaeadf92d1762f0de3bc363f61c4c10fc33403497d934049deb95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3eb76a4c744d5b3582ab8254160325f4005e11a78e7830deccfd9ebaf72b9044"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b107fc2753d8d969fa6f82daf5da912eeee9cb8572d06ad8aa832d299afdb84"
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
