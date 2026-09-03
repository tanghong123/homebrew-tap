class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.129.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3b7b07b894d9cd11053e835fe0e80c982f0db629ee7f53b9c2fe2a1436b221d5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "faebf0586533e88e627b4e606d66fa60ae545417f90ba5199758fcca372a1cfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3055a1ad7d55610f546a87a4e8b9cfad5509a3b72ca677c7fe8525e5aa74ab1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a056708675d0113eee45fb512476fe53062eccbe0ac84eec80873c657a8271f8"
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
