class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.566.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7a095b1b17168a996c44fd02c4781776ece8464d2aada96f22a6c762f1c9dfda"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a0d201925cd4add99a2294bfd9fcb1c60502fdcd3289980722280a07e6dfb3d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "facf1e6e82fb3df60b5e40aecbb72dca2560301c646221bdb7234c44069ddf0a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4549ecdbae12c4903aacb8e34b96240f144624b3349a5340e69b8233d0d39270"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
