class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.134.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a56f5d3276ab12b127659b0c66918cc78340f722b50c9dc22f99f013750b3ba8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ad0bc97ddf639494ae2debb3bc127e34ecacb8dfffa9694bce4c053e9868740f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e89c3f866591c941449e08ad603558af5ae9cbbdb718174986c18fa23aa1ba94"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.134.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c5d6d3fe60db509aff727151917bb9df632ae04055eeca9353af39103c0a2c9"
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
