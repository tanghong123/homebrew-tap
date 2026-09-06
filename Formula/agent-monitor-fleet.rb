class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.209.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "abe78f3cc382917aabee55ffc21c2b08037cbffd5717cbd389c86f2524670288"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d360e39eddf86ebdbd8b8ffb14c488e2161ba8affcd16886ffa9094326d9cfa7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4fab13fa5e9d6ad6141b37f7e070312ff98de5b8e820576f79fb5c2735a9cfc0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.209.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d355b053637670956bd925c4520946238243c51d97c0883004cf168ce8217617"
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
