class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.164.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0039dcf078542d22b79b936a7ccb746f2ad1c33908e60bc210e6c99fcb2aec79"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9b91428917e0f359b7348ec6f08bb1cef2046784e557e86ba53ca8be92c19c09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed262143d322db9b4b46f6d33c6f517585d5ccd06f376f41086d3cf03d9c07e8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e3f94c0d50107a2614168cc3a4b6fafa9eb62efc2c910917481ed18cd586900c"
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
