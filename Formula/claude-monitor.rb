class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "efd6d568a8326c153d47b207e2945c0a85dd966a42b1a966fb0b4ccb8907d842"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "adb7c41ca5747640d388c490e3860b4e44527bc341becd9627313b1c5d63b6fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dcc67217fa03d298990c5c11a089ff0f6a4e8c9db4873cc5c3ee29c178dc2993"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b16934cc2546b85a52a431cec5930196390c6e3378d4d88f50847d47deed99b"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
