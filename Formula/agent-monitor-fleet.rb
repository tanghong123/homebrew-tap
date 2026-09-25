class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.307.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c50f6324440742f889b19e4709d950a28cb42d140fccca6a58078507d76d4418"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0288fb4c9a5e6bc5eed52a1fc2919fea0ba7e12172dcccd320fb3c6b54327d44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8784419f3176fb6547d51d3e1388e8e267af4727dc72abb93ffb97012adf4656"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f9a777007f5b9fe2664e5f63d0a6b9b74b43c435c2f42da879a7fd050944944"
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
