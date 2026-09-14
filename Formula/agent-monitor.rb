class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.270.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "31282577a5ce0d5c36686ed12f5689a4dc4a603f00faf20c090c3e25d6501ab2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c6ac10b7f55ffa0995144b07c14376315129aea68fe3a183ba74512a9a2c1fe3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b06628d1e013acd21169ab9a53d3b3fc995c87b18a4ac09f1ce1a9a8381b0fe8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "00420b15d3b129fbaee6d56729b324c39b3722943733764e6196c55eed6d5418"
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
