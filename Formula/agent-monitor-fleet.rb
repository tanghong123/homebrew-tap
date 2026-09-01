class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.128.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b63abe251eb4ef775eafc10523c25ba5c92c4e7a99776bf24e2d34c45a9067fb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "522ca4f37ff98090708f0b9fa7dc0333b7c52b09ba35158cc1e7068e26d096d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fdc006bef445c69f7d508350a6a95b2c024ffaaabc3a3af61b4a52db5a9979a7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39238bce753eaa584a9c983a1409934f285aea15c0caa93f2c11fc6e254de507"
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
