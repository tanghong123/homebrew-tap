class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.321.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f1a484dcf13077ebc301c08b5c0229516ad03a9f7c6c9748937852964055982f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "720b7daf9007d3c39d6db96f232f22c17afba918d13aa14d8f1d0aba9513382a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1509b39f35ddd1d64c303416e3990f731300a99b58475d496d05e667d5a2fec5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.321.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d55b25bd5c4f092e85f3a0695b47521f4e2fdf32e1cb1745e6d10dc0e2497ea4"
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
