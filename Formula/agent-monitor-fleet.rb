class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.111.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "83c0464a897454dd681d61a37a10c46af9b4d7f491fb382ffad59bfa5f56adbf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f6aebcffc362cfa862b190772baa596a574922c483c9915e9cd0f889eb999c40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "43a59f68a4476b44c4cf9a67d555a9e1d24d91a9ec08389e2891dc5bb7a36ec5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "42fd69bd8665141649adc5b4cd7ca16daef578129c4ba3dcb73de8a232a8bdd7"
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
