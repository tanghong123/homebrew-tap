class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.371.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9d682927ea70057cba12cf85b47ffe36e3cdb663458333eb3e1dd3de040749fe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f607f39969db0d00233fbed511a048ab192d28b18f0d13ef2d3c8c120172a261"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "614dc38b36fb09d7e837dd4c4d09c7ad08da527aaa7d66f4b5ef7052ee4bb155"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.371.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "afd34b9482448a6c07c0a97cf05c965bf88122cb5de9c11f5c232d058e3fc300"
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
