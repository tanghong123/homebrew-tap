class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.52.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bab9fefcbac7c4a9769dc4e732d2d5732301d7eb5c85e91239cb28532c47bde8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ba75f3d3a00b91ce26267dac58d97081c305adc1e12a0d4895702598bf9ac520"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4b2098a202ebbdfa539f2ed2881e8d2c423eec5ea5870ccd26c90fa98fc9e15f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.2/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b570e42b4319a818f9bbcace73718f507eece97baeb554ebf792d68a728f2267"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
