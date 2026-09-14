class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.271.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "940e3423c28ee73d7d2eb5f3138f5ee2ffa492458ddf3b422de3150db66de068"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7b26a0534c7a257a264fb938abbc989d74c9d91dc7a88f319f580f126312f72f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "462ac0cd585d91ec4af551bf3ce2b55f926065ea51713ce985d7e865d44cb847"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.271.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ff98f28905504b87169f5bc08e5473720abe67463e0ccfbaebb07816fb24640d"
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
