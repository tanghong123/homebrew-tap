class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.192.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c507548a80353f1e222eb994b54132c394df7d417a6354ce56e550916a639e2c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0848e7c3aa95a6b4c969030395fd87b5a8833486379e6ac4e542daaa56172cdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e095d9747d0a98dfe7638c753de4ca0218f00224f263467f9c03cb5c1fb594e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f5c01b8d77fd170f8e896873a7f3b0dacfd06534014ebc018884cb70557e74c"
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
