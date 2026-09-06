class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.218.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "288ac9713fbe66c4c16f14cacfa0f6a34b64d1c6c66c49f8286e4ce1cea48def"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "91e9ae0cda6a087251119794b27f163b124e47645697b8460f63327c2dbfd1d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f63513e401dfb8938cf6c7a75819940236b8ca9133913e3ab1f90fb739971bb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.218.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2a304a66c6ea2fe27f0637729effa38caf9703c0288a1e157ee08159974881f"
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
