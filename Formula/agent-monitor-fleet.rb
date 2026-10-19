class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.391.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "89b4fd927d624eea3c8e7870f907f32a259d37d01ca0c7dd5bbb49c3b661dd5a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1ac213c618b6b0fd9b74875efa8972368c8348c10a09ca2f6ea1946d511fb300"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f95864b53e479f12b30abac105021952b74cfdf1093442db377f683f412d35fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3218619e52aa6b63130143c6d35139bc3432543a822e328c585c879aefd2020e"
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
