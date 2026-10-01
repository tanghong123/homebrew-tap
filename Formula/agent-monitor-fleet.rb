class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.338.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "80f9157cdc48449e1a2446226e9498e5f8f4c29c2911b821d5a995dcf50727ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a900517b75c4733d6d037df7a135e7e1ed870f339df448cab8dff576f8013ead"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0428e8bd95b1520c0373ca1793bdea14eb9ad3b4bd1bc7b03709a46e8f3cec12"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b0d3c4f635ba774a051f690b403fe0e152b40a7cef1a16fd43821828a3b13ad7"
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
