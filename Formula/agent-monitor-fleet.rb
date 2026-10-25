class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.419.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7cdd154f89c0ccc61b2fa3c6e4006159be85116a706cc733d51e03fd7a5d2cd6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e6a2983e6783a54fc3846f4bf7ae9fc149f1d3fb5f1356ba1eb5aaadcc89d306"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "895e3c5de846bfd4259ec17e49503bb7260857e70381355fc9211aebbeddd6f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.419.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "75f8c4214e2f593b897be83f035113bd5370704affac768dbc73c12e777b3534"
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
