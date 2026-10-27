class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.433.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4cac188ca33fdf60b1223e2e390feeaadfea0ede60d2f9aa512bcf2dda63981f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "82a54aa74a4e9f8161debf439fe9caa2aba8c9aff88c6986f1a346d1a9fde0a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22341fc77a83083abe5f2b930e5988fe15bb5e71c145f19ed3ada939b3835c1d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c2fd359de9c9eb5358310334104b78b57fc7d8b6b914d7e8a00bc83b45d1246"
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
