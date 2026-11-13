class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.517.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c48c2612b0fa6d41315e717f1e383f303b5ce30287566dfe0e7eb4c1a2c2cecc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1fe47f7318f5c644379b739a825693d216600d0d61a7a0087ec25bfd40d6be3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "65a1acd1d2ec88425a4ecfff0c6ea693b1c40560129c8c98596fe1aefc50c4db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "259248b1708cde42fa612dc3c71e862911883541e89b73310ffa76c156f06a6c"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
