class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.375.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e5beb9430b6f7996acf093c133453857f7ce51f4476c654e77529f84a32e518c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9827867c111a5385915fd51e722f34f02c0ea80905b3787b9ec1d2dc77d6cdf0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ae69c03fdce317bc984f35bd6e7723b813f413b1d0a56a0762acf7b5b2ad6b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.375.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e328a044d5833bdf62b58095608598ffcdd5ba0d95abd0718884247c1e3e643e"
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
