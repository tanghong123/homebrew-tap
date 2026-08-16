class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.87.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "480d3332ab81a8cb1606a16f965f162fc2f4337c385e4c3a9ed7fc6fd3b6e31a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0f938f97f118e22252cdaf6062d8cdd5fe6e958a720c4ffeaa8517b517b9a2ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1bae8ef9f992d84bcf34648df9c6a47fccce2ed70ae0b4aeb8ee7d255999ec19"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d45db875cf87285c7334023de8c343d1f517a0d2b874d4284c530d3a40fa5c33"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
