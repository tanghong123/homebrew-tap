class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.170.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0c3b08ca2474d9e743816ed668d38bdc40abddb42b38a05b3c2e6fe98b725161"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3deecf6b1864651a71c2f72c23f4259727f5ff279f4777721115412f12740af5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5366fc44ae05e7c41666bb0ae37ee26066008b59308395da7d7be3effec58f7b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.170.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5ca848a130cd8ad649a28336216318e11393d69411256e5ccfe24ece76084010"
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
