class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.214.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "180a16a1ffacb83c3d6c57a9af35e17d4138523946a0002c21323c4e3233fe54"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "32c9e467d90e8c31dfc58005ce271655be684026e10874cbe8a1da2adb317c5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93697c7977a76aabba770953d683afd731ed1d72bbf8f375eef5c30585f2db87"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6077f77f5e5eb39b8db99ae3a5aa664e1ba919c9e03d90baa8d5ad484f82f322"
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
