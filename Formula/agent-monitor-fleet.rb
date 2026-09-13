class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.267.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "525a49b6d1d3582eb43ca9e3a889eeb88ebe7b1f626622d813abe61930170e7d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "90558bfdc0387e8606ca2318bc10b980247f69b7452d6f20f325df528ad14815"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "19238dffd4870115327704c88b455ce78fc48541a09313c779677ce05df01254"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.267.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "341bc9ee69a8f03390a75150bd7f64c38b299a4c0e06404bc04691ded4fddb1e"
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
