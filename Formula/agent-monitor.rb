class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.405.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "cbb43d365246f8d0f0c7bd33fb21496028440fb5175f6f89a289828e48be03d6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "745d7cb1c7a8d6f285b9d15d935b1fd5989be3d839bb37bb08a100ba16998c12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f84579ea2ecba270bb8d5c587cce6a5d436d8b8dda3842023e5318918f4e9613"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "805e66fe89d08582aee60e92216c1dffd2a4b0472119fe7a8635b510dda616e0"
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
