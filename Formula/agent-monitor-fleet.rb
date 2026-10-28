class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.440.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "cf4882bfc6a4ce804ceaa670e6c117c49797f90730952a8b50efa8c816ed1d63"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0d73530b0ecc476dc81297dd7b8fe5d381446d1dd7ab100cf63c7bfaf5f4c003"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92d5b8e13dae2044676bc7ea037d445411fab3cf9c24f75bf38a0663d3282e88"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "acc1192e81b2aa4e83e2d2c35d64a08c4e415c189e4a6eb9c0e459fc855a4607"
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
