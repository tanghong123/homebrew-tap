class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.81.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9e22c998217672f1a2046c1604d5677e631b2483e5192f8ce164b5bf80843195"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5b16bc19154f41145b943d17bd0e8a994667bfb15c29dcf27bf186363f540fe8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "224ecbb5e94ca73c8f4a1da010c9ae93c7a8d6e8224a4df4649407d3f75ad84c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f4858b06908c83818d9ae9655bfd9a4e06bf2bb764b660a0495d630490c4c1c"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
