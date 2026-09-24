class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.297.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "550a6b0643a336c833c9a84946ffb7919c9f8f0443b762ee36cdc2125fdae4fe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7bd30ef59ac3469986dd3624d26f79b05f809f054e6e35df31f400364d79aea5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "497bbfe5f3d66ae73835b5e58115107799e74074d19fe7647d2aaaaef7901603"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.297.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7da7eaa8569dae85754b1969761590f93c05d20f75afac63a6fdb8c638d986e6"
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
