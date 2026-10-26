class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.429.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "00015b469229839bd93383ee148b5c634cc5411c04a2a9395be31f37c8f130b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7a6a42f192a609c324871f96543f22d9d5964d1574a448cfa9a50de4b4f3c5e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b5826b9573aafd6fde25027be03506dd414883d66bdde64728c187d0726bdee9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fad593601db5625c590e55efb148de6c0eb129ee285421614e48e7b837c703bb"
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
