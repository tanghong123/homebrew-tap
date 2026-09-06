class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.217.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6133e1a0cd115b8188ec0b4401a8c886d872aada18f898965a16c4d3e3943b64"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "05ccf37815505dfa56ff831dd835bfee34c60e2a2874cdac47f1bb4587922afc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "648b6e6dee228854d452c802a3dfc1aa3509e31c8167a4be6ef6b88bca1452a9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c2843d5bf56496baf9ab22596c6b33a7b4c06604cedb543cfdc9d3b9ea89c13"
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
