class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.100.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "741384a066dfe977b6f6dc4f5a89f853cb15b6bd15687e2feb5e19761de1035f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "647eddb390d091fbaaf5e4e12619e87f43432a915607c920a365b4352994df83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bbf3ef87cafb627903ea0dab03c6c1df07f78347445fa2f2a6ab7ce0cfe86432"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "baecacadb948c59832045674b6c17585e537f461334424f6bb601be916e3ef5c"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
