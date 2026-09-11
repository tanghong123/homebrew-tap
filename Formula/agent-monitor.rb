class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.257.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "43844be287230df14ac239e86837355eceb15e3fc452d129736594dac274a825"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6d82063b31788023dd8328e8a8c569197a9d0b24179d3105200a55ff865b71cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a4e06a68084acfe1cf2b9e033d666a64316aa2da7943cf9893f68ff8f4265f6b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5fd26bfe9dd164230d7f87d21174ee9d11ab8781f1642e88a367f08d514e6c6"
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
