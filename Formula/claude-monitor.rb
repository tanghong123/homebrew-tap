class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.67.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b8b9e5cc17ca3a930ad9f1aa9e27039049a3d6163ff57778e1e9e1f8cbfe45ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "3a077de19cbfae5bf80778c5b06a8833400607fedca9b6260ffc1e8d08656959"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "743fbd79ca8f81a7fcba8ef6c947a95600c53c720bc04ddfb5e9dc50ec920633"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a518133b5cf3e67dcace9bf1dba4befd3c062ceffe5a883b5324250258c220d4"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
