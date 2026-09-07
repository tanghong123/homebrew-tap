class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.227.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c5beeeb8b6e5397c202b649e0e90109e9dbf18480b39538365efeb5698b5272a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2012cb65255b2b7eac7d28341d2b0a3e47a31a047aace335b0958f6d0160dd9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fdb8a69168d328c1b1f43041098e7646b793abc292030fba23ac9877ccd59997"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9231280054e671ffb91537fd09bfe2500ddcd3b345117e2c54fa7b189e4e3e2a"
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
