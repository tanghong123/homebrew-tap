class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.443.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d448ef8cde17da7ef03e59e9369da85c9e1540580daa6bc04054629d109e4604"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "61f68bbc1b22c1aa9577cee749855169c2943b12269ca8883410206618fbf5c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee9e19226e50953a313e9b71c7d6457e6f8485bc14d87e1d4138c29d3821c4f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.443.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b94aa3f4ac7da3f6e8df7175947392f956291e472ea468698faa41a2cbeb5a60"
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
