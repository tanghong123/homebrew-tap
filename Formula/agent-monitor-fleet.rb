class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.126.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "cd5a4fe5fc738a2e1be3f5fee49e4109a835a85916fe47b319e0fad73b055d4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "deb499a903da8a9669e7afc5acf21973fd9cc320efdac4a2f9f2c993276f3ed3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7db73e0a1bade21877787e41c88854ce39ab50dc9fb96ff2abae4231aa19e32f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e19215003dc3d482c6d69cf915f8625c02a8a46698e9a4f7ed8afb64ad2ba7c"
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
