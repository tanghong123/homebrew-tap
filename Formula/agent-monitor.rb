class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.125.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7168019f1c29af26e27e9758b5099c2d98429f74881eb58cb45c0bfd14d60612"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4113bc94a8b767156545ebf51872ba96e6849a0784c0047e45454dd08f26d31c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9d5d8af2d5c1f1b5172665ca9d1265a05a95db5025efff37bc5f02643495e2c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cc5f622dd30bab9408b97c12ca6bf673ede81d36ba62814dcce586652c163166"
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
