class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.319.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bef05e2307d1977cf85f5d23649528f33cd87447029a36eb8d7289a986a946a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2242a8681ac382a2ca44cf10c12f315aab23fdc8e66b3e0bd4754783d2569a28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98851e72cba0658b798e0fdc8f0e85d8d346659af19fe39823d028aca8111208"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d54ba021759feaa7399445a898a3e1a4da31d71b78dcdf83c2e6422c7d632776"
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
