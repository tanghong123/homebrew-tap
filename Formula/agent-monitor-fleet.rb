class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.127.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2e3ae6a865d2662620788ba0241d611a835bd8b057a0f16d8ded0bfec2d9ae5e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a6535820845795269c6f8c1b5ef84df649f02b0fe68003f135bf6fc5cf44c426"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6ef20d95ddaefe9df9326403e428aa671a7358448edc47d39d75bd57f6ffc63"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7f8ee8be057b590bf2bc214557bc591891bf05375638d5388f7d3242bc4826f"
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
