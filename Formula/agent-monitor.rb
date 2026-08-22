class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.101.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "acb2e8046f40b937d08ef4ac57f90f592f8774346fc629bf7d629325e532ad29"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fa047f1b45c6e17dc07e731bc2e28b3d7a614019f4f051f751c53d11796c2975"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "db41a859e0ce67ff1b68a428b26993c184f1a755b2a476cba576318ad6dbe7ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1732ea2e2567154ed57da6c3cdfce2d764819bb3855bee2bec36107d1fc92685"
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
