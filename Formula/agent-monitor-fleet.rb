class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.244.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3300bfea6aa038e70ee9a9e2e3bc82d185a7541b54d0bfa6ba1ac306f6893c69"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "74baaaa50be5793dbf1b23b71d99784ad0cc92dead852c69f9605f116ae2b6e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b384ac0066ceb677f93042d0591206dc4b72b412ef4d5ce13516f29db0215305"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b9ba8f07618f86d6116560c5d7d2fac91e0c40a0d5211020150a111bac1a8fba"
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
