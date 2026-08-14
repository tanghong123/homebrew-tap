class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "111bedacda208cb1b6575d19818c0726eb85356d2588e40806b46bca7b8cb4fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e0271a64b479687ebd79c11eb5ccdb4088af6268b3d75ce1cc43f63a1749a2e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9791d9ad589e664dff373047fbe3fecb9e3a26d3fb6e7db94af7266baa592b1c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0e6ef0c1f90ecaeb93ee8b967b81d5d50543ff9afc35650164b7c01e9f6183d4"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
