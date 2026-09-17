class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.274.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3ba6fec645bc5178bb0bde9f376a538bdb91488da1a61af97421748f48bd8281"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ffcc5c4cda56883b42b68910980ad6a852d2019d09fe38b50fa8d4348553b90d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ee6afdc79e70d4b2c33f499cf0bae2af55e8d8d9bd0d1cc20d247817e36f52e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97ad9136643dafababb261fb47ba650db57fa980845ec6a33aada6d3d69b97ec"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
