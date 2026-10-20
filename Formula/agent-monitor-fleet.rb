class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.397.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "934c5066f31ebf9a4ac48d16fb505ee76e28c66957eec3080c0048816d89bf38"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e869bf692a8ebaeda22b58333c8f95e5ede951f67c9d483bf52e4aa990a183c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c614b3a6e7e59af9d17e0abd4d89d6bc2fa408d187cb857f6151f712991d981"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.397.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c0515e92b32863e5e0ba3ef9f8ca1fbfd94caaab28e3c5d37defb3690fd2ac64"
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
