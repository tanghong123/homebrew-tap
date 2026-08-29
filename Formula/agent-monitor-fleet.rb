class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3dc621e296508e2b452ab73e2fda43bec70b194e6bf85462e7ab06d599407d65"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8a8f807a5cafb17a7cf673d998012618a728baaef721258e2439582d97f3e6ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8fbb35ba45cc8989a944a6c9c0075e754073ca9399641bedc76efabf97a8c7a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a9e942bd05e9d696d6c3f172645d96d46ed15df827320b84b380c18596277886"
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
