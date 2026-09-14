class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.272.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "73ed905aac96f0ffda049a451a7bbe915ff92b55f79c357b5484d11e5e27698c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c7bc10fd8dfb2c6a2ba42042d51a1bf05ec4ca7eaf2eaf9b6162f1ccf0a85e9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6ab6de4b6b432059a4dcdc45e900c27b677ef91695f1f9f9aeda4e8789a7cad7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.272.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0269f4629f1a2dfc92d835d46a74540f17ceb3068fe21f44eac0d590ca1e3fed"
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
