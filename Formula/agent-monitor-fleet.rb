class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.154.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d73ce449a791b8c2a610a5f9098923df3d72b2df562c1916989ca49b7fbba7b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "21c93c177b8834e98594676c70bf4d39e8209d34b02dec15fc0db83b00021093"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de4713ed31eb9a02726c91f0995f4a8029ceac201983d7489510d330ef573925"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e67181e58f3e7b45238be25c7f39752c45a9c2ff7b31f7cbd6aaf37400fe741e"
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
