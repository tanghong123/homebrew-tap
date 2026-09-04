class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.157.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3b75149828c80117606d6dfbb7e3fa30671addb9a331a01091e9523c8cda7565"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4378515bacc42144a9444db27fd72bbb21957458558cb0eb7d9a4b612c54ff76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2302f416fdfd653d8811f0b05cdd107019d21a57f83fd3e11588847697922a5e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "614c912007a6c2982b6b1140b299f66e13df84631ebd38302a0cb3e4e4c7ddcd"
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
