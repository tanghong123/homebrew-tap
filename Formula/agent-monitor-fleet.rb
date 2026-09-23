class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.295.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ac079adac124a2d9c9d97052829fb848f08c7c804bad4a16aca04c00180a7858"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "19031e80e630b4e37894c5aacad0f26c02fb5ad44754eb8f0b0e27e09f07b222"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cb1b81fd79e9378db76c935ec8849d653f073b983068bb863803f25d2fc215cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf954f982eef36270e4e7524db3509b7e972be7ff405c9bdaa04ecb8bd5ce7b7"
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
