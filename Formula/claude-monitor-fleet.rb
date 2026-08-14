class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "92448a3d9ce6f627d4cc3920df23cdbfbf44fe201d74b9709621af32af825f47"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c7381430e01d189be702978e84a26ba74b0c3bb41678b2770ef812737f334da0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "829119d6c77c522dd5c22f44bc1cbf30251c0eda6f1c1af08cc438101f0c655f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "86243efccac90b7b4b3f7a8db20994b514f0003bec856134b1a5fb9bc9a70071"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
