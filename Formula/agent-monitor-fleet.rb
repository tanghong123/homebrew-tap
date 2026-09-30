class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.333.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a945a60cd16e8389db6ec47a19fe18f5ac9e36b27d87519c471085fc10a60fd9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5017b70b5268c1ae82f50bf6753a8d421989a6f244f1e438187d1f58319cae2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08a19c14db3266617fd45a5abe2501c3ba0399fec6aa3afec7e3fae11029d289"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.333.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b5f1248a805a13ccfc6b022bba4b66fdb19de9b398eead44b0b84a9b6b35573b"
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
