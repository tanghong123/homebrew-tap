class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.124.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e3ae3e38dcdcee619e55f153bcd44c5e2d48fda80eda57ddff41617bc8a1417a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9adf049823be2425273fdf55d37713d5408a8458c5d599172f318c6cea3ffe47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ba6a92f6eed1fbfffaa71f12f7bbd52b580d105e8298f119196a3f3509c1f3a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e8470d9c94815290394cff74a5413790147abbe62845d75f496c6e529b0c2d6f"
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
