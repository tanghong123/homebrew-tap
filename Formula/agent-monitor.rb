class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.506.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "400b5f234544b3b0269d4f25a11f912d4565f13dc5abaef8e72565fcc1be3077"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7a787e4d3fed06f259712653f3286e507c03b405dc8af432f39f7586d492fd10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "51588b17fe9d3c5996722dbf16472c89318a464cde9010fe496c6941fb562991"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95f1ee1f76f1e7ceec16244fbf0df872a064719ad44b49d16a8ac6aabe384d4d"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
