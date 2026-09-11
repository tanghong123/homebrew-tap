class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.253.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4089e293b87283deb4ccef38c38473924eb9ce5b14c96bead07bae0ca340f1e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "02a27613fde01cb2034fa9db753ca4e62a45ed1650940c4b14d294c5044b67be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de58fd4a30055eb7a80b88ea3f0cd5e734a8bf0b77b565d3bceb929189d8e900"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fe6d2f784f2c3f243a9f576c177815f804c4620918b0c512978b50a894eeecbb"
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
