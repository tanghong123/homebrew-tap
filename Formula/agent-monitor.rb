class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.342.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2a9174550bc7882d9ac5bbb30071a5dc6b2b1f2edf61cab2ed4a17e2de586104"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d0b18ab42788df7c57b877d93786dc455f49d14131112db4565e8e7369edf8bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fe8652ffdadc7ed30264ac8b7db3b3d99d547546b99fd6cb67e68a5a4bdd8b85"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cdb4f803e08563fde21149bd2f982bd304f0159a747f252461fe18b5b749513c"
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
