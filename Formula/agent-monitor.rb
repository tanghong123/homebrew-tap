class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.320.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "42ce4223ee9ceb0b3125d6e6522a3472332462320a9d4022790b2f6a69769382"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6b7b048a11b14b4124479ec5e850bd3925bff5cbc22f057e6fcf35157ddcc312"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "37df4c928bef924aeda0eb02c9dac9f11f53a0edf638b70604b4ed747c90e599"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c491025f3069470ce5071921d1e6601aca2e51d388f358c7d693082d7f45889"
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
