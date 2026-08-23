class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ea3c7ec70f9cf05ef1d47779bfff1e000f8b1cc02d0997d689a2ad03ba8484be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fe9b18a059d69096be055b45b6d4ade8408f44507139f6da883789f046e5b668"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "20475266adeaa4a7439093b6d73441cc69a411bbc02ebee0f4538b8ac7c721dc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ef8678cf2222def10c4a49884df9923e6588cd0be74df302e6b4d03059546d32"
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
