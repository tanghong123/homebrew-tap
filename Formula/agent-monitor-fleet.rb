class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.176.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "48fde48d542e61e469a674aac945eca79150975cef003900ddbae8fc37451ab7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "53ad49d514ecc1adfd0eb0cdb2b61db30ecf6f6a09421582b3780b655d0bf9e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "030cc015659765dc282a14437d06b37682a51ec240360964157c20c1f45589d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "979ddb6876811e967220510fd3f2fd39a228bba2b132080c615f85aa3d34dc28"
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
