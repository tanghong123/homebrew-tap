class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.57.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c342b231e87f0d71ccdfb4e9025f99cd1c4894712b1f3f26277a703ff78720d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1a6bf7a26f9c3f9023cee144c8fd20dbff38813331f29d54c303fade05eefe52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5cabc948c231a086f117471252cbe6ce9d45edc26d35a104e1fb4666841b142e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7a6368a9d69b452bb859fab757e465983d8bbba603c3ea5ceec5a49d853508a"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
