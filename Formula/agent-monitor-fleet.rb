class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.155.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "fcd1c21c38d8c73b55bd602fb8690283930d9e199dbece93b19b2a6f06aac4ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "28b8351b3a5ba11f3a509235c84374946c9bc02c2776701d68634760f5ed1bb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "85c262048de3ce8a222f8848928d64bafeaa1c679157c0b0793532de57170396"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3669ec31f3793f8fa51ee246c2fa7d6878d3d62c44e6e645e904ead66355013f"
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
