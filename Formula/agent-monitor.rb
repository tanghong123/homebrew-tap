class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.240.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "fd9fa69bc9de39210b9f903a1e3fabba6fd0267eda67180c386707980aa68d2a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9e1e3e1786b437bd4a28ca4c7c5e530d9922b80c6a231f28cf848a41d80b8096"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93f27a47471305837e016eab874392b0b31895c525d2855eea6a99d28c715a27"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "987597d341229ab6205f3da3cc98d3cba41c1e4fc4c1418158889e4f48161969"
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
