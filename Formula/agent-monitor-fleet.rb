class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.181.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f02dccab3d0932b8ae1d8ac98ed575938a9f1f8a6a319b4b76652dc7d9308375"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a6644b686d9e161ecb11090618732fdd4415c52b0c64008fb98537a98330fbe9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8833e2b22f5c59fc2857c8b7a764b7200b0e73a00070f60782e668602cfca7d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ddc287a1a0912d680090fdd1874b806ecc5f5d2e7ca9eb62fdd96e2550f9d13"
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
