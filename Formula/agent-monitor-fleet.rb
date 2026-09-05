class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.201.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3ce275edc31cafa5cf4108f8f525f8dd973cefd03e92390ba0d97dc44b34bbfc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bfd49f897ef4c4d525fb01b9a18cbfdcc72ed816410a51b0aab8ad2ed3ab2a62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e2382a725ee249b9fb946c309820a0aed4f713924cfbb25fc4fdaf410261910"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0cc6089049d6fc88afceff65e62432740cfe2f450b221e025a1bbd0d596c09fa"
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
