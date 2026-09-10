class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.247.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "fe0185a24b9d056b0ae4a09cc344e9e295626cd013d28e287d35b62e3bf2c014"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b32fdceea663555afa396cc79d17bf19b234db9d540789cede7e2f1d8b68675e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c569a021a551212c4dcaa2d87f474505a06d6d0e6ece63f145972353602d1fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e78a894bd523ef8ca6f8dae6cd60c916f53783c237dfe99ba9b38343d173c51"
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
