class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.343.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "fb77b50ada010761ba5f0901492251a622b3edf3b809868e7e47bf67d73d7be6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b50ce3ea25508957922dc47bc1f2a1a95ba02f06c8ba2c9b43d4f3dd2f2817f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77fffa0606b5759a562479ba46a941ef75cef654135e0a934bdd08ed53a55562"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0e5030f6545ed5668c8965de5908ad32ea9a94024a3eaee13d8769af845d2f9a"
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
