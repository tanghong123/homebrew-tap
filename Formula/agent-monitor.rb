class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.561.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ec254412d49575875d52b9758ff122822102f884cfda436e7a6e031ec9043653"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8b4b6209f1770baf4ed3cad24c7eb66ac529f4f88c64a4399176cbfac3e76e9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8711bf561ef4352625ba91c6cfb0f246310502886120ff5428144652f6991fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc43d0f9aad8570255894a32402b58a2c67d7a127626d0aebe6e643ce9b8ea9c"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
