class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.432.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "89f02cdadb5693048adaa520ab7733680b5dc80d404a4da58b27985b2a1a8879"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "59aa8e4ef354ad920d3d47958af11fad8fffdff44846e8d7240c4a52b5897037"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75c2afab33ca1a80531629959a2ed773b5d41bb68cbc41a0425e124e40614a00"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.432.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b7da141f81b8bc3672e270de33212f85508b22b65f31da5d52793dbace4c7ed8"
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
