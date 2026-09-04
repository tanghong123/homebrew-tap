class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.161.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8220148167ba4ca0688119acf3868e85e8bf1ce59ae48493dafe493c1bd3c2ba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bbb338438c88a299e60fceb71f4bbf06760e579a7b489dd474a8cfcf520d41d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "97ce2d58a41470f43d6538f8f272ca4169209b16b1a7de46726ccdd925e5546a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f927d77dce6dd84f1b928aa1af0aac8381363c5ce471c20f2d8a1c671890d405"
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
