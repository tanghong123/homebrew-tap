class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.182.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9560e80799638538a07a7198d01b5c8434bce8949ed90ebadf91cae68db86540"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c134a543f3ce501aa6a153031b26de7a24c778864fd12c0dc263b915a96060b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "882518f659f216cc5329fe7628d27885c9e09f6b8100e2de0f9385b7f5aaa76c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.182.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4aa3e2e8588676ac132202970f0143c4748a185524a1023b7b4898b11edc168a"
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
