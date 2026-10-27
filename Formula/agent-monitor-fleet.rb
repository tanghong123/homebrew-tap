class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.435.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c61c8c54c53af77bdfbc1d0b689570bcf2d0b2b93202f9f79cb3e40eec50973f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c923201fe1e1ae015465085ccc1a2f58f5156b519649d036bb5ef088c33a828f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ab3513f83e44ea24e9ecb87bfd6576a4aa7c01e1817cf995ca8e4872d58bf8e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4ea7b15df9ca0bc4acc683f9ff35ce2250076280036bd628e5997d0d2c91f114"
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
