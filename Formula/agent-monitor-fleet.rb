class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.108.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ad146752d397f4268601f8873ebe851840b1752a826bf5123c9f1856b19711b1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "882658e8ff83f6d50a9b3d293402ea39986dee7a0877467e27c3ee55bbd015b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1eca169455e6300d5d5994dc799ff08a41140169fd1cd258001becd548ff1613"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.108.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a01a108cf5e4973df77e38ee5ee7375a18b682d167b62fcb2633efced2148f2"
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
