class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.126.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "639d18487bd19ef584bae730c4840e19b86df6a6be017d680bcf2722290e5578"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b3ac35fad3a9d51cce2ca62dfdff575df70e782b219c85bc4f6f56ff7e1dacdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22b30879ba59d8886095d9c6a98aa8e3697d98179a092040d632ab8d469e44df"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a430ac25fd6ff64b6b958396d2c11392af1f12e87af4b92891c69da394d73afb"
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
