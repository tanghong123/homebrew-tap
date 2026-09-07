class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.226.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f0088123b9482b0037a36d888b98b28c90abb828705dfacee0051e0992862faf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6ea345ea5a473e751b606f29d06feb9694a4f92ba212f921a29a063e293af22d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e1d833f9271de10b0e084c8ecf67fc7f3c455a847fac5ec3858e19bc1a17b2b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.226.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c99e4af139a0230233bb5b0ef722066453a10c06503e99edf7dc36ad4e3af266"
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
