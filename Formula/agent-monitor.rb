class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.132.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "181d98624195ee1d5c3698868157725a321dfcf73d0acbf259f31bf0479eb7a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9fe2b0c454f349bd9ce604416dad32c48634793f49102e7d07abc0b865b9d530"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ab681f06eb996f3d5c4f293ec6ac2a82c23b3636771268af506ff276ce64e66"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.132.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41d2ee2f64671510b63c455fcc3b0d198eb99dd401d22fc69b60221135086fc2"
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
