class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.216.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b40abaec0ff93610f6a3e6eefa198ed5aea1ff0b2c06e51ef012428e2f3a9422"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "56751df3833b5a882ddfbc000e1ab4a782f3d594356354a61339e8b97126e33c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4be5ad0bd7751fcda0afc4f719715cbf0be234e3e4747fca46b19d648390808"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2fa5ec03ca045fa5a89b067617438d4843e5464e2ef98f817a582d7fab7261e6"
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
