class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.57.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4a7291c0b3283e476da9803ac1415ff008cbb1085db60788b70c92a57a7ec232"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f58c6242bb95dc6ff082225490c4cb1958078335ffd793905c69db5336d2da56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a23b6d0ddf43dfccae13606f578cd702a1379f0cf66e0cf170f6171a26dc571"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a86a166cc68d2265badf60ba90d2ed9dd0bd91c95fa2443c3f5ea81717e9e742"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
